select code, max(nav_date) as maximum from nav_history group by code
having max(nav_date) < (select max(nav_date) as maximum from nav_history)
