# Creating Database named Capstone_Project
CREATE DATABASE Capstone_Project;

# Selecting Capstone_Project database to import cleaned dataset
USE Capstone_Project;

# Viewing imported table
SELECT * FROM cca;

/*
Questions :- 

Group the customers based on their income type and find the average of their annual income.

Find the female owners of cars and property.

Find the male customers who are staying with their families.

Please list the top five people having the highest income.

How many married people are having bad credit?

What is the highest education level and what is the total count?

Between married males and females, who is having more bad credit? 

*/


-- Group the customers based on their income type and find the average of their annual income.

SELECT Type_Income, AVG(Annual_income) as Average_Annual_Income
FROM CCA
GROUP BY Type_Income;

/*
Type_Income, Average_Annual_Income

Pensioner	155131.5985
Commercial associate	233932.6027
Working	180905.7293
State servant	211422.4138
*/

-- Find the female owners of cars and property.

SELECT Ind_ID, Car_Owner, Property_Owner
FROM CCA
WHERE Gender = "F" AND Car_Owner = 'Y' AND Property_Owner = 'Y';


-- Find the male customers who are staying with their families.
-- -- Here we have 2 approaches to the question: 
		-- 1st :
			-- There is an male living with his parents (could be an single parent or both)
		-- 2nd 
			-- He could be living with his wife and childrens which would make up his family have more than 2 members or he and his wife make family of atleast 2.

SELECT Ind_ID, Gender, Children, Family_Members, Housing_Type
FROM CCA 
WHERE (Gender = "M") AND (Family_Members >= 2 OR Housing_type = 'With parents');


-- Please list the top five people having the highest income.

SELECT *
FROM CCA
ORDER BY Annual_Income DESC
LIMIT 10;


-- How many married people are having bad credit?
-- --  Here since we don't have enough information on Credit limit/score, credit history, pending bills, delayed payments history etc, we won't be able to find bad credits, hence I'm using label (which is approval for credit card 0=approved, 1=rejected), hence I'm using 1 (rejected) as bad credit in this context.
SELECT *
FROM CCA
WHERE (label = 1 AND Marital_Status = 'Married');


-- What is the highest education level and what is the total count?

SELECT Education, COUNT(Education) as Count_Education
FROM CCA
GROUP BY Education
ORDER BY Count_Education DESC;


-- Between married males and females, who is having more bad credit? 

SELECT Gender, label, COUNT(label) as Number_of_bad_credits
FROM CCA
WHERE label = 1
GROUP BY Gender, label
ORDER BY Number_of_bad_credits DESC;

-- -----------------------------------------------------------------------------END---------------------------------------------------------------------------------