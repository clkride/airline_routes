-- Find busiest airports based on number of flights
select b.name, count(*) as num_flights from
`Airports_dataset.routes` a join `Airports_dataset.airlines` b
on a.airlineid = b.airline_id
GROUP BY b.name
ORDER BY num_flights DESC
LIMIT 10;

-- Find most popular routes by number of flights
SELECT dst.name as destination,
       dst.latitude as destination_lat,
       dst.longitude as destination_lon,
       src.name as source ,
       src.latitude as source_lat,
       src.longitude as source_lon,
       count(*) as num_routes from
`Airports_dataset.routes` r 
join `Airports_dataset.airports` src on r.source_airport_id = src.airportid
join `Airports_dataset.airports` dst on r.destination_airport_id = dst.airportid 
group by destination, source, destination_lat, destination_lon, source_lat, source_lon
order by num_routes desc;


-- Connectivity within a country
select sa.country as source_country,
       da.country as destination_country,
       sa.name as source_airport,
       sa.latitude as source_lat,
       sa.longitude as source_lon,
       da.latitude as destination_lat,
       da.longitude as destination_lon,
       da.name as destination_airport,
       COUNT(DISTINCT CASE WHEN r.stops = 0 THEN r.airlineid END) AS num_direct_flights,
       COUNT(DISTINCT CASE WHEN r.stops > 0 THEN r.airlineid END) AS num_connecting_flights
from `Airports_dataset.routes` r
join `Airports_dataset.airports` sa on r.source_airport_id = sa.airportid
join `Airports_dataset.airports` da on r.destination_airport_id = da.airportid
group by source_airport, destination_airport, source_country,destination_country, 
source_lat, source_lon, destination_lat, destination_lon
ORDER BY num_direct_flights DESC;

-- Longest Routes
SELECT 
  sa.country AS source_country,
  da.country AS destination_country,
  sa.name AS source_airport,
  da.name AS destination_airport,
  sa.latitude AS source_lat,
  sa.longitude AS source_lon,
  da.latitude AS destination_lat,
  da.longitude AS destination_lon,
  COUNT(DISTINCT CASE WHEN r.stops = 0 THEN r.airlineid END) AS num_direct_flights,
  COUNT(DISTINCT CASE WHEN r.stops > 0 THEN r.airlineid END) AS num_connecting_flights,
  2 * 6371 * ASIN(SQRT(POWER(SIN((da.latitude - sa.latitude) * ACOS(-1) / 180 / 2), 2) + COS(sa.latitude * ACOS(-1) / 180) * COS(da.latitude * ACOS(-1) / 180) * POWER(SIN((da.longitude - sa.longitude) * ACOS(-1) / 180 / 2), 2))) AS distance_km
FROM `Airports_dataset.routes` r
JOIN `Airports_dataset.airports` sa ON r.source_airport_id = sa.airportid
JOIN `Airports_dataset.airports` da ON r.destination_airport_id = da.airportid
WHERE sa.country != da.country 
GROUP BY 
  sa.country,
  da.country,
  sa.name,
  da.name,
  sa.latitude,
  sa.longitude,
  da.latitude,
  da.longitude
ORDER BY 
  distance_km DESC;

-- Airports with high inbound, outbound traffic, and number of connecting flights
WITH airport_traffic AS (
  SELECT
    source_airport_id AS airport_id,
    COUNT(*) AS num_outbound_flights
  FROM
    `Airports_dataset.routes`
  GROUP BY
    source_airport_id
),
airport_connecting_flights AS (
  SELECT
    destination_airport_id AS airport_id,
    COUNT(DISTINCT airlineid) AS num_connecting_flights
  FROM
    `Airports_dataset.routes`
  WHERE
    stops > 0
  GROUP BY
    destination_airport_id
),
airport_inbound_traffic AS (
  SELECT
    destination_airport_id AS airport_id,
    COUNT(*) AS num_inbound_flights
  FROM
    `Airports_dataset.routes`
  GROUP BY
    destination_airport_id
)
SELECT 
  a.airportid AS airport_id,
  a.name AS airport_name,
  a.country AS airport_country,
  COALESCE(atr.num_outbound_flights, 0) AS num_outbound_flights,
  COALESCE(aib.num_inbound_flights, 0) AS num_inbound_flights,
  COALESCE(acf.num_connecting_flights, 0) AS num_connecting_flights
FROM `Airports_dataset.airports` a
LEFT JOIN airport_traffic atr ON a.airportid = atr.airport_id
LEFT JOIN airport_inbound_traffic aib ON a.airportid = aib.airport_id
LEFT JOIN airport_connecting_flights acf ON a.airportid = acf.airport_id
ORDER BY 
  num_outbound_flights DESC, 
  num_inbound_flights DESC, 
  num_connecting_flights DESC;
