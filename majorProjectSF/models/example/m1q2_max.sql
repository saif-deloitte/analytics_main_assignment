select category, max(nav) as max_nav, nav_date
from nav_history, fund_category, mutual_fund
where mutual_fund.code = nav_history.code and
fund_category.id = mutual_fund.category_id
group by category, nav_date
