# CEL CASE STUDY - CLIENT'S SUPPLY CHAIN
## Key insights
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

## Processing
### 1. JOIN two tables, resolve NULLs and create a complete new table using CTE

`Full output:` [https://github.com/namhuynhstor/CEL-Casestudy/blob/bd8db7e0b77ed17091faf2f9ccc81020d4f994ed/MASTER_TABLE.sql](url)

<img width="765" alt="Screenshot 2023-06-04 at 04 47 42" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/bd08152d-f436-4940-9097-903854d7d9ef">


### 2. Calculate the elements of Service Level in turn
- **Service Level Per SKU**

`Full output:` [https://github.com/namhuynhstor/CEL-Casestudy/blob/0e805711125ba62ffb8c7dda696e6c70e8c0297a/servicelevel_SKU.sql](url)

<img width="167" alt="Screenshot 2023-06-04 at 05 03 24" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/c6f44289-11ff-4b6a-a675-98fcc7c1325d">

- **Service Level Per CLIENT**

`Full output:` [https://github.com/namhuynhstor/CEL-Casestudy/blob/0e805711125ba62ffb8c7dda696e6c70e8c0297a/servicelevel_CLIENT.sql](url)

<img width="178" alt="Screenshot 2023-06-04 at 05 06 16" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/b5106099-2321-40b3-ac56-13f44f7b1afe">

- **Service Level Per ORDER**

`Full output:` [https://github.com/namhuynhstor/CEL-Casestudy/blob/0e805711125ba62ffb8c7dda696e6c70e8c0297a/servicelevel_ORDER.sql](url)

<img width="175" alt="Screenshot 2023-06-04 at 05 08 13" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/e3e58ef0-5728-40b8-a16b-d68244942954">

- **Service Level Per PERIOD**

`Full output:` [https://github.com/namhuynhstor/CEL-Casestudy/blob/0e805711125ba62ffb8c7dda696e6c70e8c0297a/servicelevel_DAY.sql](url)

<img width="229" alt="Screenshot 2023-06-04 at 05 10 24" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/de0848a1-cdb9-4ed9-9908-84a072620997">

### 3. ABC classification 
- **Classification of SKUs**

`Full output:` [https://github.com/namhuynhstor/CEL-Casestudy/blob/0e805711125ba62ffb8c7dda696e6c70e8c0297a/ABCclassification_SKU.sql](url)

<img width="271" alt="Screenshot 2023-06-04 at 05 13 40" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/3b0914b4-a8de-46c2-95bc-a00ac563e92b">

- **Classification of CLIENT**

`Full output:` [https://github.com/namhuynhstor/CEL-Casestudy/blob/0e805711125ba62ffb8c7dda696e6c70e8c0297a/CLIENT_classification.sql](url)

<img width="372" alt="Screenshot 2023-06-04 at 05 15 32" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/faf34eb3-278f-47c2-af01-0e961e933409">

## Visualazation Using Power BI
### Creating Relationship Model Between Tables

<img width="650" alt="Screenshot 2023-06-04 at 05 18 32" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/a0201cd0-5227-4064-a922-dad318ee0ef8">

### Building The Report View 

<img width="1003" alt="Screenshot 2023-06-04 at 05 19 52" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/0557c8b3-e74e-4247-8038-a89240dae38d">

### Designing The Dashboard Background By PowerPoint And Finalizing The Dashboard

![Picture 1](https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/fabdf800-1b2f-4563-be19-0e90ad67efe9)

<img width="1003" alt="Screenshot 2023-06-04 at 05 22 41" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/628e4cb1-a6a5-4788-8cfa-9673b25caed8">

### Indicators on Dashboard
- Overview of orders and cancellations

<img width="178" alt="Screenshot 2023-06-04 at 05 25 18" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/df181698-55d6-4e8a-b2ef-d99b40148ce0">

- Client and SKU classifications

<img width="190" alt="Screenshot 2023-06-04 at 05 26 37" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/86639576-edb4-4718-9ecb-95a030f684b2">

- The Service level percentage over time points (Graph chart)

<img width="552" alt="Screenshot 2023-06-04 at 05 27 20" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/3b888d38-c372-447e-90a5-cd674510be76">

- The Variation of total orders and cancellations over time (Graph chart)

<img width="551" alt="Screenshot 2023-06-04 at 05 29 54" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/10471f87-f97a-466e-924b-6944b4d4062d">

- The Filters for order code, customer code, SKU and time bar

<img width="559" alt="Screenshot 2023-06-04 at 05 30 16" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/dface310-6d9e-455c-962b-c6401a3d8c62">

## Recommendations






