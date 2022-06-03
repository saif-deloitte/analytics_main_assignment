SELECT fund_category.category, to_char(to_date(nav_date, 'YYYY-MM-DD'),'MM-YYYY') as month_of_year, avg(nav) as avg_nav
FROM nav_history
INNER JOIN
mutual_fund
ON
nav_history.code = mutual_fund.code
INNER JOIN
fund_category
ON
mutual_fund.category_id = fund_category.id
group by month_of_year, fund_category.category
