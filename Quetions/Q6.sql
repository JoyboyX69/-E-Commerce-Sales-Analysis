-- 6. Count how many customers are Male,Female and Other.
SELECT gender,count(gender) AS No_of_gender FROM customers GROUP BY gender;