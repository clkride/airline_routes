<a name="readme-top"></a>

![Bitbucket open issues](https://img.shields.io/bitbucket/issues/clkride/airline_routes?style=flat-square)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/clkride/airline_routes?style=flat-square)
![GitHub contributors](https://img.shields.io/github/contributors/clkride/airline_routes?style=flat-square)
![GitHub watchers](https://img.shields.io/github/watchers/clkride/airline_routes?style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/clkride/airline_routes?style=flat-square)
![GitHub](https://img.shields.io/github/license/clkride/airline_routes?style=flat-square)
<a href="https://linkedin.com/in/abbas-singapurwala">
<img src="https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin&labelColor=blue">
</a>

# Airline Routes
A comprehensive analysis of airlines and their routes that connect more than 100 countries spanning the globe.

## Table of Contents
- [Project Description](#project-description)
- [Data Set Description](#data-set-description)
- [ER Diagram](#er-diagram)
- [Looker Dashboard](#looker-dashboard)
- [Business Benefits](#business-benefits)
- [Author](#author)
- [License](#license)
- [Acknowledgments](#acknowledgments)


## Project Description
In this project, I have tried to explore the domestic and international airline traffic using OpenFlights Database. Using SQL queries, I have identified the following:

* Busiest Airports based on number of flights
* Most popular Routes by number of flights
* Domestic Connectivity for each country
* Longest Routes
* Airlines Market Share by number of flights
* Important Airports Connecting Busiest Routes 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Data Set Description
Airports, Airline, Route, Plane, and Country
(Link: https://openflights.org/data.html#schedule)

The OpenFlights/Airline Route Mapper Route Database contains 
67663 routes between 3321 airports on 548 airlines spanning the globe.

* Airports Dataset - It includes unique identifiers, names, cities, countries, IATA and ICAO codes, latitude and longitude coordinates, altitude, timezone, daylight savings time, and type of the location. This dataset is useful for a variety of applications, such as travel planning, transportation analysis, and mapping.
This dataset is useful for a variety of applications, such as travel planning, transportation analysis, and mapping.

* Airline Dataset - It includes a unique identifier for each airline, as well as the name, alias, IATA and ICAO codes, callsign, country of origin, and whether or not the airline is currently active or defunct. This dataset is useful for various applications, such as aviation analysis, travel planning, and research on the history of airlines.

* Routes Dataset - This dataset contains information about flight routes operated by airlines worldwide. It includes the airline's IATA or ICAO code, a unique identifier for the airline, the source and destination airports' IATA or ICAO codes, unique identifiers for the source and destination airports, information on whether or not the flight is a codeshare, the number of stops on the flight, and the 3-letter codes for the plane types used on the flight. 

* Planes Dataset - This dataset contains information about passenger aircraft used in flights worldwide. It includes a curated selection of 173 aircraft, each with a full name, a unique three-letter IATA code, and a unique four-letter ICAO code. These codes are commonly used in flight schedules and reservation systems.

* Countries Dataset - This dataset contains a list of ISO 3166-1 country codes. These codes can be used to look up the human-readable country names for the codes used in the Airline and Airport tables. Each entry in the dataset includes the full name of the country or territory, a unique two-letter ISO 3166-1 code, and FIPS country codes as used in DAFIF, which are now obsolete and primarily of historical interest.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ER Diagram
![alt text](https://github.com/clkride/airline_routes/blob/main/ERD%20.png?raw=true)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Looker Dashboard

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Business Benefits

Airports and Airline Companies around the world can use this interactive dashboard to – 

* Find shortest routes between source and destination airports, 
* Forecast flight delays by integrating weather forecast data
* Estimate capacity requirements at connecting airports to handle incoming or redirected flight traffic, 
* Identify choke points in this complex interwoven network by identifying weak links to prevent meltdown at airports

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Author
 @[Abbas S.](https://github.com/clkride)

## License
The MIT License (MIT)

Copyright (c) 2023 Abbas Singapurwala

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments
Inspiration, code snippets, etc.
* [Choose an Open Source License](https://choosealicense.com)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)
* [OpenFlights Database](https://openflights.org/data.html#schedule)
<p align="right">(<a href="#readme-top">back to top</a>)</p>


