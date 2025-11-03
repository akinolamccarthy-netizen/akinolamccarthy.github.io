SELECT *
FROM [dbo].[Work Place Data]

--1. How many incidents occurred at each plant?

SELECT plant
       ,COUNT([Incident Type]) AS Total_Incident
FROM [dbo].[Work Place Data]
GROUP BY plant

---2. What is the total incident cost per department?

SELECT Department,
       SUM([Incident Cost]) as Total_Incident_Cost
FROM [dbo].[Work Place Data]
GROUP BY [Department]

---3. Which incident type resulted in the highest total days lost?

SELECT [Incident Type],
       SUM([Days Lost]) as Total_Day_lost
FROM [dbo].[Work Place Data]
GROUP BY [Incident Type]
order by SUM([Days Lost]) DESC

---4. What is the distribution of incident types by shift?

SELECT  [Shift],
       COUNT([Incident Type])
FROM [dbo].[Work Place Data]
GROUP BY [Shift]

--5. What is the average incident cost for each injury location?

SELECT [Injury Location],
       AVG([Incident Cost]) as Avg_Cost
FROM [dbo].[Work Place Data]
GROUP BY [Injury Location]

---6. Which age group has the highest number of incidents?

SELECT [Age Group],
        COUNT([Incident Type])
FROM [dbo].[Work Place Data]
GROUP BY [Age Group]

---7. How many incidents were reported as 'Lost Time' by each plant?

SELECT Plant,
       COUNT([Incident Type]) AS Lost_Time_Incident
FROM [dbo].[Work Place Data]
WHERE  [Report Type] = 'Lost Time'
GROUP BY plant
Order By COUNT([Incident Type]) DESC

---8. Which department had the highest number of 'Crush & Pinch' incidents?

SELECT Department,
       COUNT([Incident Type]) AS Crush_Pinch_Incident
FROM [dbo].[Work Place Data]
WHERE [Incident Type] = 'Crush & Pinch'
GROUP BY Department
Order By COUNT([Incident Type]) DESC

--9. Which plants reported the most "Near Miss" incidents?

SELECT Plant,
       COUNT([Report Type]) AS Near_Miss_Incident
FROM [dbo].[Work Place Data]
WHERE  [Report Type] = 'Near Miss'
GROUP BY plant
Order By COUNT([Report Type]) DESC

---10. What is the total number of incidents by year and month?

SELECT DISTINCT
       [Month],
       [Year],
       COUNT([Incident Type]) AS Total_Incident
FROM [dbo].[Work Place Data]
GROUP BY [Month],[Year]


---11. Which gender has the most reported incidents?

SELECT [Gender],
       COUNT([Incident Type]) AS Reported_Incident
from [dbo].[Work Place Data]
group by Gender

---12. What is the total cost of incidents per year?

SELECT DISTINCT [Year],
       SUM([Incident Cost]) AS Yearly_Total_Cost
FROM [dbo].[Work Place Data]
GROUP BY [Year]

---13. Which incident resulted in the highest cost?

SELECT TOP(1)
        [Incident Type],
        SUM([Incident Cost]) AS Cost
FROM [dbo].[Work Place Data]
GROUP BY [Incident Type]
ORDER BY SUM([Incident Cost]) DESC

---14. What is the total cost of incidents for each report type?

SELECT [Report Type],
       SUM([Incident Cost])
FROM [dbo].[Work Place Data]
GROUP BY [Report Type]

---15. Which departments had incidents with more than 2 days lost?

SELECT Department,
       [Days Lost]
FROM [dbo].[Work Place Data]
where [Days Lost] >2

---16. What is the average number of days lost per incident type?
        
select [Incident Type],
        AVG([Days Lost]) AS AVG_Day_Lost
from [dbo].[Work Place Data]
group by [Incident Type]

---17. What is the distribution of incidents by shift (Day, Afternoon, Night)?


SELECT [Shift],
       COUNT([Incident Type])
FROM [dbo].[Work Place Data]
GROUP BY [Shift]

---18. Which months have the highest number of incidents?

select TOP(1)
       [Month],
       count([Incident Type])
from [dbo].[Work Place Data]
group by [Month]

SELECT *
FROM [dbo].[Work Place Data]

---19. What is the total cost of "Vehicle" related incidents?

SELECT [Incident Type],
       SUM([Incident Cost]) AS iNCIDENT_tOTAL_cOST
FROM [dbo].[Work Place Data]
WHERE [Incident Type] = 'vEHICLE'
GROUP BY [Incident Type]

---20. Which age group is most affected by "Falling Object" incidents?

SELECT [Age Group],
        count(*)[Incident Type]
FROM [dbo].[Work Place Data]
WHERE [Incident Type] = 'Falling Object'
group by [Age Group]

