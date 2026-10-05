# Retail Sales Data Analysis Portfolio

## Project Overview
This end-to-end data analytics project focuses on extracting, cleaning, analyzing, and visualizing transaction data from an online retail store. The project handles a raw dataset, cleans it using Python, extracts critical business metrics using structured SQL queries, and builds an interactive executive dashboard in Power BI.

---

## Project Structure & Files
* **`Online Retail.xlsx`** – The original, un-cleaned raw transactional sales dataset.
* **`Data_Cleaning.ipynb`** – The Python Jupyter Notebook used to handle missing values, clean up negative/zero data, and engineer total revenue metrics.
* **`cleaned_online_retail.csv`** – The final, optimized dataset output from Python used for database loading and dashboarding.
* **`Retail_Queries.sql`** – Structured PostgreSQL queries executing advanced retail analysis (Top products, Monthly trends, Customer spend analysis).
* **`Retail_Sales_Dashboard.pbix`** – The interactive Power BI dashboard application tracking high-level performance metrics.

---

## 🛠️ Data Cleaning Process (Python)
Using **Pandas**, the data was cleaned through a strict script to ensure downstream reporting data integrity:
1. **Missing Data Handling:** Dropped all transactional records missing a unique `CustomerID` to secure customer metrics accuracy.
2. **Canceled Orders Filtering:** Identified and isolated return/canceled transactions (Invoice numbers starting with 'C').
3. **Outlier Filtering:** Excluded structural rows exhibiting zero or negative item quantities.
4. **Feature Engineering:** Calculated a brand new transactional column `TotalPrice` (`Quantity` * `UnitPrice`) for immediate aggregate indexing.

---

## 📊 Business Metrics Solved (SQL)
The structured query script (`Retail_Queries.sql`) addresses key operational and executive queries:
* **Best-Selling Inventory:** Identifies the top 10 products driving major store volume and gross margin.
* **Geographic Revenue Distribution:** Maps out total transaction orders and revenue across localized country structures.
* **Monthly Revenue Trends:** Evaluates gross revenue trajectories dynamically month-over-month.
* **High-Value Client Valuation:** Tracks top 10 individual consumers based on distinct purchasing patterns and total expenditures.
* **Average Order Value (AOV):** Formulates transactional benchmarks assessing the store's macro performance.

---

## 📈 Power BI Interactive Dashboard
The final analysis is packed into a high-fidelity **Power BI (.pbix) Executive Dashboard** mapped to track core Retail KPIs:
* **Total Sales & Revenue Trends** over longitudinal dates.
* **Top Performance Metrics** segmenting products, customers, and global regions.
* Interactive slicers for dynamic geographic and chronological filtering.
