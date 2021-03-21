create view countryAmerica as select
name,code, capital, province, area, population
from country c, encompasses e where
continent="america" and c.code = e.country;

select * from countryamerica;

SELECT * FROM province;

SELECT * FROM city WHERE country = 'MEX';
/*
Crear una vista que incluya la información de las provincias (estados) de México */
create view estadosMexico as select
NAME, country, population, area, capital, capProv
from province p where
country='MEX';

SELECT NAME, capital FROM estadosMexico;
/*
Crear una vista que incluya la información de las ciudades de México */
create view ciudadesMexico as select
NAME, country, province ,population, longitude, latitude
from city c where
country='MEX';

SELECT * FROM ciudadesmexico WHERE province = 'Veracruz';