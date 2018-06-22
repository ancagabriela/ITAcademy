
//	Quantitat de registres de la taula de vols:
SELECT count(*) FROM USAirlineFlights.Flights;

//	Retard promig de sortida i arribada segons l’aeroport origen.
SELECT Origin, AVG(ArrDelay) AS ArrivalDelay, AVG(DepDelay) AS DepartureDelay FROM USAirlineFlights.Flights
GROUP BY Origin;

//Retard promig d’arribada dels vols, per mesos i segons l’aeroport origen
SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS ArrivalDelay FROM USAirlineFlights.Flights
GROUP BY Origin, colYear, colMonth;

// Retard promig d’arribada dels vols, per mesos i segons l’aeroport origen 
(mateixa consulta que abans i amb el mateix ordre). Però a més, ara volen que 
en comptes del codi de l’aeroport es mostri el nom de la ciutat.

SELECT City, colYear, colMonth, AVG(ArrDelay) AS ArrivalDelay 
FROM Flights
INNER JOIN USAirports ON Flights.Origin = USAirports.IATA
GROUP BY Origin, colYear, colMonth;

//Les companyies amb més vols cancelats. A més, han d’estar ordenades de forma 
que les companyies amb més cancelacions apareguin les primeres.


SELECT DISTINCT Description, count(Cancelled)
FROM Flights
INNER JOIN Carriers ON Flights.UniqueCarrier = Carriers.CarrierCode
WHERE Cancelled= 1
GROUP BY Description
ORDER BY Description ASC;



//Companyies amb el seu promig només d’aquelles les quals els seus vols arriben al
seu destí amb un retràs major de 10 minuts.

SELECT Description, AVG(ArrDelay)
FROM Flights
INNER JOIN Carriers ON Flights.UniqueCarrier = Carriers.CarrierCode
GROUP BY Description
HAVING AVG(ArrDelay) > 10;


//L’identificador dels 10 avions que més kilòmetres han recorregut fent vols comercials:

SELECT TailNum, SUM(Distance) FROM Flights
GROUP BY TailNum
ORDER BY SUM(Distance) DESC
LIMIT 10;
