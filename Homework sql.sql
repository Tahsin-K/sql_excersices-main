SQL QUERY EXERCISES

select "hello world",123;
select * from city;
select *  from city where district like "aceh%";
select Name as nm, District as dst from city where CountryCode = "arm";
select Name from city where CountryCode like "bfa%";
select Name, District from city where CountryCode like "tto%";
select * from city where name like "%orto%";
select * from city where Name like "bor%";
select * from city where Population < 1000;
select Countrycode from city where Population < 1000;
select * from city where CountryCode like "UKR%" and Population > 1000000;
select * from city where Population < 200 or Population > 9500000;
select * from city where CountryCode in ("TJK", "MRT","PNG","SJM");
select * from city where Population between 200 and 700;
select * from country where Population between 8000 and 20000;
select * from country where IndepYear < 0;
select * from country where IndepYear is null and Population > 1000000;
select * from country where SurfaceArea < 10 and LifeExpectancy is not null;



 // SQL JOIN EXERCISES
select * from city where Name like "ping%" order by Population;
select * from city where Name like "ran%" order by Population desc;
select count(*) from city;
select avg(Population) from city;
select max(Population) as biggest_population from city;
select min(Population) as smallest_population from city;
select sum(Population) from city where Population < 10000;
select  count(*) from city where CountryCode in ( "MOZ", "VNM");
select CountryCode, count(*) from city where CountryCode in ( "MOZ", "VNM") group by CountryCode;
select CountryCode, avg(Population) from city where CountryCode in  ( "MOZ", "VNM") group by CountryCode;
select CountryCode, count(*) citycount from city group by countrycode having citycount>200;
select language from city inner join countrylanguage using (countrycode) where Population between "400" and "500";
select c2.Name from city c1, city c2 where c1.CountryCode = c2.CountryCode and c1.population = 122199;
select c2.Name from city c1, city c2 where c1.CountryCode = c2.CountryCode and c1.Population = 122199 and c2.Population <> 122199;
select nc.Name from city yc, country c, city nc where yc.Name= "Luanda" and yc.ID=c.capital and c.Code=nc.CountryCode;
select oci.Name from city yci,country yco,country oco, city oci where yci.name = "Yaren" and yci.id=yco.capital and yco.region = oco.region and oco.capital= oci.id;
select distinct Language from city,country cc, country rc, countrylanguage c1 where city.Name="riga" and city.CountryCode=cc.code and cc.Region=rc.Region and rc.Code=c1.CountryCode;
select Name from city tc where tc.Population=(select max(Population) from city);










