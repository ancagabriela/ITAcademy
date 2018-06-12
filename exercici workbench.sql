
//	Quantitat de registres de la taula de vols:
SELECT count(*) FROM USAirlineFlights.Flights;

//	Retard promig de sortida i arribada segons l’aeroport origen.
SELECT Origin, AVG(ArrDelay) AS ArrivalDelay FROM USAirlineFlights.Flights
GROUP BY Origin;

SELECT Origin, AVG(DepDelay) AS DepartureDelay FROM USAirlineFlights.Flights
GROUP BY Origin;

//Retard promig d’arribada dels vols, per mesos i segons l’aeroport origen
SELECT Origin, colMonth, AVG(ArrDelay) AS ArrivalDelay FROM USAirlineFlights.Flights
GROUP BY Origin, colMonth;

// Retard promig d’arribada dels vols, per mesos i segons l’aeroport origen 
(mateixa consulta que abans i amb el mateix ordre). Però a més, ara volen que 
en comptes del codi de l’aeroport es mostri el nom de la ciutat.

SELECT City, colMonth, AVG(ArrDelay) AS ArrivalDelay 
FROM Flights
INNER JOIN USAirports ON Flights.Origin = USAirports.IATA
GROUP BY Origin, colMonth;

//Les companyies amb més vols cancelats. A més, han d’estar ordenades de forma 
que les companyies amb més cancelacions apareguin les primeres.


SELECT DISTINCT Description, Cancelled
FROM Flights
INNER JOIN Carriers ON Flights.UniqueCarrier = Carriers.CarrierCode
ORDER BY Description ASC;


//Companyies amb el seu promig només d’aquelles les quals els seus vols arriben al
seu destí amb un retràs major de 10 minuts.

SELECT Description, AVG(ArrDelay)
FROM Flights
INNER JOIN Carriers ON Flights.UniqueCarrier = Carriers.CarrierCode
GROUP BY Description
HAVING AVG(ArrDelay) > 10;


//L’identificador dels 10 avions que més kilòmetres han recorregut fent vols comercials:

SELECT DISTINCT TailNum, Distance FROM Flights
ORDER BY Distance DESC
LIMIT 10;
