create DATABASE SCOPED CREDENTIAL cred_nikk
WITH
    IDENTITY = 'managed identity'


CREATE external DATA SOURCE source_silver
WITH
(
    Location = 'https://awstoragelake8978.dfs.core.windows.net/silver',
    CREDENTIAL = cred_nikk
)

CREATE external DATA SOURCE source_gold
WITH
(
    Location = 'https://awstoragelake8978.dfs.core.windows.net/gold',
    CREDENTIAL = cred_nikk
)  


CREATE EXTERNAL file FORMAT FORMAT_parquet
WITH
(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)




CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * from gold.sales


CREATE EXTERNAL TABLE gold.extcalender
WITH
(
    LOCATION = 'calender',
    DATA_SOURCE=source_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * from gold.calender


CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'customers',
    DATA_SOURCE=source_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * from gold.customers



CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'products',
    DATA_SOURCE=source_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * from gold.products





CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'returns',
    DATA_SOURCE=source_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * from gold.returns






CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'territories',
    DATA_SOURCE=source_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * from gold.territories


CREATE EXTERNAL TABLE gold.extsubcategories
WITH
(
    LOCATION = 'subcategories',
    DATA_SOURCE=source_gold,
    FILE_FORMAT = FORMAT_parquet
)
AS
SELECT * from gold.subcategories