SELECT fund_category.category,
AVG(repurchase_price) as avg_repurchase_price,
AVG(sales_price) as avg_sale_price
FROM nav_history
INNER JOIN
mutual_fund
ON
nav_history.code = mutual_fund.code
INNER JOIN  
fund_category
ON
mutual_fund.category_id = fund_category.id
group by fund_category.category
