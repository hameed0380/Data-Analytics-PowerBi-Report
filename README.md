# Data-Analytics-PowerBi-Report

![Power bi](https://img.shields.io/badge/power_BI-FF9900?style=for-the-badge&logo=powerbi&logoColor=white) ![PostgreSQL](https://img.shields.io/badge/postgresql-3776AB?style=for-the-badge&logo=postgresql&logoColor=white) ![Git](https://img.shields.io/badge/Git-B1361E?style=for-the-badge&logo=git&logoColor=white) ![VSCode](https://img.shields.io/badge/VSCode-2962FF?style=for-the-badge&logo=visual%20studio&logoColor=white) ![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white) ![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)


## Project Overview
This project involves partnering with a medium-sized international retailer to enhance their business intelligence practices. With operations spanning various regions and accumulating significant sales data from disparate sources, the retailer seeks to leverage this data for informed decision-making. The goal is to utilize Microsoft Power BI to design a comprehensive Quarterly report, presenting actionable insights to drive strategic initiatives.

- ## Table of Contents
- [Project Overview](#project-overview)
- [Objectives](#objectives)
- [Description](#description)
- [Data Modeling](#data-modeling)
- [File Structure](#file-structure)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

### Objectives
1. Data Extraction and Transformation:
   - Extract data from diverse sources.
   - Transform data to ensure consistency and accuracy.
2. Data Modeling:
   - Design a robust data model based on a star schema.
   - Create relationships between different data entities.
3. Quarterly Report Construction:
   - Develop a multi-page report catering to the needs of C-suite executives.
   - Incorporate visually appealing and informative visualizations.

### Loading in Data
The project focuses on four pivotal tables: Orders, Products, Sales, and Customers. Each of these tables constitues to providing essential information that is crucial for a thorough comprehension of the business data. These tables are sourced from different sources, as illustrated in the image below.

<img src="Images/Report-Process.png" width="600" height="380">

### Data Modeling
The Data Model underpinning this project adopts a **star-schema** architecture, comprising five interconnected tables essential for comprehensive data analysis.

![Data Model](Images/Data-Model.png)

1. **Orders Data (Fact Table):** Extracted from an Azure SQL database, this table includes information about each order.
2. **Customers Data:** Extracted from CSV's files contained in a folder, this table includes information about each customers details as well as purchases.
3. **Products Data:** Extracted from a CSV file, this table includes information about each product sold by the company.
4. **Stores Data:** Extracted from Azure Blob Storage, this table includes information about the location of the stores.

- Relationships:
  - Orders Table: Serves as the central fact table, surrounded by the four dimension tables mentioned above.
  Establishes one-to-many relationships with each dimension table.
  - Dimension Tables: Maintain one-to-many relationships with the Orders table, providing contextual details for enhanced analysis and reporting.

***
### Executive Summary

![Executive Summary](Images/Executive-Summary.png)

***
### Customer Detail

![Customer Detail](Images/Customer-Detail.png)

***
### Product Detail

![Product Detail](Images/Product-Detail.png)

***
### Stores Map

![Stores Map](Images/Stores-Map.png)

***
### Stores Drillthrough

![Store Drillthrough](Images/Store-Drillthrough.png)


***
### File Structure
    .
    ├── Data-Analytics-Power-BI-Report.pbix
    ├── Images
    │   ├── Custom-Tooltip.png
    │   ├── Customer-Detail.png
    │   ├── Data-Model.png
    │   ├── Executive-Summary.png
    │   ├── Product-Detail.png
    │   ├── Report-Process.png
    │   ├── Store-Drillthrough.png
    │   └── Stores-Map.png
    ├── MOV
    ├── README.md
    ├── SQL Queries
    │   └── OrdersPoweBi.sql
    └── Tables and Columns
        ├── dim_customer_columns.csv
        ├── dim_date_columns.csv
        ├── dim_product_columns.csv
        ├── dim_store_columns.csv
        ├── orders_columns.csv
        └── tablenames.csv

### Installation
In order to view and use the report on your local machine, run this command in an appropriate directory:

   ``` bash
   git clone https://github.com/hameed0380/Data-Analytics-PowerBi-Report.git
   cd Data-Analytics-PowerBi-Report
   ```

### Usage

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.