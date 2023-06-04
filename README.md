# CEL CASE STUDY - CLIENT'S SUPPLY CHAIN
###  :mag:  About case study 
    - The customer provided sales and cancellation figures  from January and February 2017.
        • Sales (.csv)
        • Cancellations (.csv)
        
    - The analysis will be presented to the advisory department based on the following factors:
        • The daily volume over the period
        • ABC classification of SKUs and Clients
        • Service level by SKU, Client, Order and Period
        • And other recommendations for further investigations

### Interactive Software
        • Excel
        • SQL SERVER
        • POWER BI
        • POWERPOINT
   
  ## I.	Key insights
- **Service level** = Delivered quantity * 100/ ordered quantity
    - Delivered Quantity = Quantity_Shipped
    - Ordered Quantity = Order_Qty (sales table) + Quantity_Ordered (canceled table)
    - It can be computed at various levels:
        - Per SKU (item code)
        - Per client (address number)
        - Per Order
        - Over a given period

- **Classification**
    - ABC classification of **SKUs**
    - ABC classification of **clients**

- **Notes**
    - **SKUs**: Item Code
    - **Clients**: Ship to Address 
    - **Order**: Order No (Order Number)

## II. Approach - Project Planning
#### Purpose: What? Why? What do we want to achieve?
To unlock sales and cancelations insights that are not visible before for sales team for decision support & automate them to reduced manual time spent in data gathering.

#### Stake Holders: Who will be involved?
-	Sales Team
-	Consulting Team
-	Customer Service Team
-	Data & Analytics Team

#### Result: What do we want to achieve?
An automated dashboard providing quick & latest sales insights in order to support data driven decision making.

#### Success Criteria: What will be our success criteria?
-	Dashboards uncovering sales order insights with latest data available.
-	Sales team able to take better decision & prove cost savings of total spend.

### Simulate approach
<p align="center">
<img width="700" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/99c4c75d-fce7-4fdb-8b2e-c5685295c93a">
</p>
   
### Setup Process
-	Step 1: Check quality and relationships between tables
-	Step 2: Import it in SQL Server do ETL(Extract, Transform, Load) if required
-	Step 3: Connect Power BI with SQL Server database or Excel database
-	Step 4: Make outline for the report and Dashboard layout on Power BI
    
## III. Processing
### JOIN two tables, resolve NULLs and create a complete new table using CTE
Proceed to merge the two tables based on:
- Delivered Quantity = Quantity_Shipped
- Ordered Quantity = Order_Qty (sales table) + Quantity_Ordered (canceled table)
<p align="center">     
<img width="765" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/d40104f0-ba08-48d6-be8c-8fb29f9d833d">
</p>

### Calculate the elements of Service Level
**Service Level** is almost calculated by `SUM(Quantity_Shipped_new)*100/ SUM(total_ord_qty)`
Service Level Per SKU
<h4 align="center">Per SKU</h4>
<p align="center">
<img width="300" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/ae27fa37-a3f0-47fb-8541-d0f24a291cb7">
</p>

<h4 align="center">Per CLIENT</h4>
<p align="center">
<img width="300" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/f405e822-5d1f-4fe7-88ec-1b346767d970">
</p>

<h4 align="center">Per ORDER</h4>
<p align="center">
<img width="300" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/b5dcae32-0b5a-4578-8279-df55f2780dc8">
</p>

<h4 align="center">Per PERIOD</h4>
<p align="center">
<img width="331" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/68dd7837-0158-41f2-93cb-37b0cbe6cee3">
</p>

### ABC classification 
<h4 align="center">Classification of SKUs</h4>
<p align="center">
<img width="474" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/e5fbd2bf-7888-437f-99b2-0e11c3425c01">
</p>

<h4 align="center">Classification of CLIENTs</h4>
<p align="center">
<img width="674" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/d4178a19-3bdd-4b8e-af3c-ff516dbd891f">
</p>

## IV. Visualazation Using Power BI
<h4 align="center">Creating Relationship Model Between Tables</h4>
<p align="center">
<img width="650" alt="Screenshot 2023-06-04 at 05 18 32" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/a0201cd0-5227-4064-a922-dad318ee0ef8">
</p>

<h4 align="center">Building The Report View </h4>
<p align="center">
<img width="650" alt="Screenshot 2023-06-04 at 05 19 52" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/0557c8b3-e74e-4247-8038-a89240dae38d">
</p>

<h4 align="center">Designing The Dashboard Background By PowerPoint</h4>
<p align="center">
<img width="650" alt="image" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/c65c0911-20a4-4318-af9e-bc0947ed1efa">
</p>

<h4 align="center">Finalizing The Dashboard</h4>
<p align="center">
<img width="650" alt="Screenshot 2023-06-04 at 05 22 41" src="https://github.com/namhuynhstor/CEL-Casestudy/assets/129588364/628e4cb1-a6a5-4788-8cfa-9673b25caed8">
</p>

### 4.4. Indicators on Dashboard
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







