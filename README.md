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
The project focuses on four pivotal tables: Orders, Products, Sales, and Customers. Each of these tables constitues to providing essential information that is crucial for a thorough comprehension of the business data.



### Data Modeling

![Data Model](Images/Data-Model.PNG)

### Executive Summary

![Executive Summary](Images/Executive-Summary.PNG)

### Customer Detail

![Customer Detail](Images/Customer-Detail.PNG)

### Product Detail

![Product Detail](Images/Product-Detail.PNG)

### Stores Map

![Stores Map](Images/Stores-Map.PNG)

### Stores Drillthrough

![Store Drillthrough](Images/Store-Drillthrough.PNG)

### File Structure
    .
    ├── CSV
    │   ├── dim_customer_columns.csv
    │   ├── dim_date_columns.csv
    │   ├── dim_product_columns.csv
    │   ├── dim_store_columns.csv
    │   ├── orders_columns.csv
    │   └── tablenames.csv
    ├── Images
    ├── MOV
    ├── README.md
    └── SQL Queries
        └── OrdersPoweBi.sql

### Installation
In order to view and use the report on your local machine, run this command in an appropriate directory:

   ``` bash
   git clone https://github.com/hameed0380/Data-Analytics-PowerBi-Report.git
   cd Data-Analytics-PowerBi-Report

   ```

### Usage

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.