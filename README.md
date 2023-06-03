# CEL CASE STUDY - CLIENT'S SUPPLY CHAIN

### Technologies used
Excel 

SQL Server

Power BI - PowerPoint

Statistics Statistics
### Approach - Project Planning
- **Service level** = Delivered quantity * 100/ ordered quantity
    - Delivered Quantity = Quantity_Shipped
    - Ordered Quantity = Order_Qty (sales table) + Quantity_Ordered (canceled table)
    - **It can be computed at various levels:**
        - Per SKU (item code)
        - Per client (address number)
        - Per Order
        - Over a given period

- **Classification**
    - ABC classification of **SKUs**
    - ABC classification of **clients**

## Data Analysis Using SQL
**1. JOIN two tables, resolve NULLs and create a complete new table using CTE**

`Output:` MASTER_TABLE.sql

<img width="765" alt="Screenshot 2023-06-04 at 04 47 42" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/bd08152d-f436-4940-9097-903854d7d9ef">

