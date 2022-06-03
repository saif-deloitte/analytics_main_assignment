1. Plot performance of upto 3 funds for the past 3 months. [line]

Make an inner join with nav_history.code = mutual_fund.code and mutualfund.amc_id = amc.id to get the mutual fund name
a. Group by amc.name and limit it to 3
b. In metrics, use perfomance as in MTD by using its formula
Plot the line chart i.e the time series chart using a & b with time line set to last 3 months from nav_date

2. Count of mutual funds discontinued each year. [hist] 

Make an inner join with nav_history.code = mutual_fund.code and mutualfund.amc_id = amc.id to get the mutual fund name
Count mutual funds that are not active in 2019 but were in 2018

3. Distribution of latest mutual funds based on category. [pie]

Make an inner join with nav_history.code = mutual_fund.code and mutualfund.amc_id = amc.id to get the mutual fund name
Make an inner join with nav_history.code = mutual_fund.code and mutualfund.category_id = fundcategory.id to get the category name
Group the mutual funds by category with time line being last 1 month from nav_date

4. Average growth of mutual funds based on category for past 3 months.

Make an inner join with nav_history.code = mutual_fund.code and mutualfund.amc_id = amc.id to get the mutual fund name
Make an inner join with nav_history.code = mutual_fund.code and mutualfund.category_id = fundcategory.id to get the category name
Group the mutual funds by category with time line being last 3 months from nav_date
Average growth = (current growth + previous growth + 3rd month previous growth)/3
Current growth = (current nav - previous month nav)/previous month nav, similarly for other two
Add the average growth to metrics
Chart to be used = Time-Series
