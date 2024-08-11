with c1(category) as
(
    select 'Low Salary'
    union all
    select 'Average Salary'
    union all
    select 'High Salary'
)

SELECT c1.category, COALESCE(c2.accounts_count,0) as accounts_count FROM c1
LEFT JOIN
(
SELECT CASE WHEN income < 20000 THEN 'Low Salary'
WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
WHEN income > 50000 THEN 'High Salary' ELSE NULL END as category
, COUNT(account_id) as accounts_count
FROM Accounts
GROUP BY 1
) c2 ON c1.category=c2.category