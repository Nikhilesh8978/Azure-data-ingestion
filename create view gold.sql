create view gold.calender
AS
SELECT
*
from 
OPENROWSET(
             BULK 'https://awstoragelake8978.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
             FORMAT = 'parquet'
)as query1



create view gold.customers
AS
SELECT
*
from 
OPENROWSET(
             BULK 'https://awstoragelake8978.dfs.core.windows.net/silver/AdventureWorks_Customers/',
             FORMAT = 'parquet'
)as query1



create view gold.products
AS
SELECT
*
from 
OPENROWSET(
             BULK 'https://awstoragelake8978.dfs.core.windows.net/silver/AdventureWorks_Products/',
             FORMAT = 'parquet'
)as query1


create view gold.returns
AS
SELECT
*
from 
OPENROWSET(
             BULK 'https://awstoragelake8978.dfs.core.windows.net/silver/AdventureWorks_Returns/',
             FORMAT = 'parquet'
)as query1


create view gold.sales
AS
SELECT
*
from 
OPENROWSET(
             BULK 'https://awstoragelake8978.dfs.core.windows.net/silver/AdventureWorks_sales/',
             FORMAT = 'parquet'
)as query1


CREATE VIEW gold.territories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragelake8978.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS query1



create view gold.subcategories
AS
SELECT
*
from 
OPENROWSET(
             BULK 'https://awstoragelake8978.dfs.core.windows.net/silver/Product_Subcategories/',
             FORMAT = 'parquet'
)as query1