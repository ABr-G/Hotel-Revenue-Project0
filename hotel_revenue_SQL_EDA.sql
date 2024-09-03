--📌Get all the data in one unified table before visualice It
--/Select * from dbo.['2019$']
--/UNION
--/Select * from dbo.['2020$']
--/UNION
--/Select * from dbo.['2018$']

--Message <-- Once runned all the queries, delete the following sintaxes "--/".

--📌IS OUR HOTEL REVENEW GROWING? 
--Lets do some EDA
--/WITH hotels as(
--/Select * from dbo.['2018$']
--/UNION
--/Select * from dbo.['2019$']
--/UNION
--/Select * from dbo.['2020$'])

--/Select * from hotels

--Message <-- Once runned all the queries, delete the following sintaxes "--/".

--📌Create a new column for seeing -->¿is the hotel revenew growing by year?
--/WITH hotels as(
--/Select * from dbo.['2018$']
--/UNION
--/Select * from dbo.['2019$']
--/UNION
--/Select * from dbo.['2020$'])

--/Select (stays_in_weekend_nights+stays_in_week_nights) * adr AS revenue from hotels

--📌📌Is this increasing by year?
--/WITH hotels as(
--/Select * from dbo.['2018$']
--/UNION
--/Select * from dbo.['2019$']
--/UNION
--/Select * from dbo.['2020$'])

--/Select 
--/arrival_date_year,
--/SUM((stays_in_weekend_nights+stays_in_week_nights) * adr) AS revenue 
--/from hotels
--/GROUP BY arrival_date_year

--📌📌Let's have this broken down by hotel type  //  Add more columns (meal cost column)
--/WITH hotels as(
--/Select * from dbo.['2018$']
--/UNION
--/Select * from dbo.['2019$']
--/UNION
--/Select * from dbo.['2020$'])

--/Select 
--/arrival_date_year,
--/hotel,
--/ROUND(SUM((stays_in_weekend_nights+stays_in_week_nights) * adr),2) AS revenue 
--/from hotels
--/GROUP BY arrival_date_year,hotel




--📌📌See (idk, see in the video what he says)
WITH hotels as(
Select * from dbo.['2018$']
UNION
Select * from dbo.['2019$']
UNION
Select * from dbo.['2020$'])

Select * from hotels
JOIN dbo.market_segment$
ON hotels.market_segment = market_segment$.market_segment


--📌📌2See (left join the meals cost)
WITH hotels as(
Select * from dbo.['2018$']
UNION
Select * from dbo.['2019$']
UNION
Select * from dbo.['2020$'])

Select * from hotels
LEFT JOIN dbo.market_segment$
ON hotels.market_segment = market_segment$.market_segment
LEFT JOIN dbo.meal_cost$
ON meal_cost$.meal = hotels.meal



