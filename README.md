<div align="center">

# 💳 Credit Card Fraud Detection & Risk Analysis

### 🔎 Data Analytics • Fraud Pattern Analysis • SQL Risk Segmentation • Exploratory Data Analysis

<p>
  <img src="https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python" />
  <img src="https://img.shields.io/badge/Pandas-EDA-150458?style=for-the-badge&logo=pandas&logoColor=white" alt="Pandas" />
  <img src="https://img.shields.io/badge/NumPy-Analysis-013243?style=for-the-badge&logo=numpy&logoColor=white" alt="NumPy" />
  <img src="https://img.shields.io/badge/PostgreSQL-SQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL" />
  <img src="https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white" alt="Jupyter" />
</p>

<p>
  <img src="https://img.shields.io/github/repo-size/Analysts001/Financial-Transaction-Risk-Analysis-Credit-Card-Fraud-Detection-project?style=flat-square" alt="Repository Size" />
  <img src="https://img.shields.io/github/last-commit/Analysts001/Financial-Transaction-Risk-Analysis-Credit-Card-Fraud-Detection-project?style=flat-square" alt="Last Commit" />
  <img src="https://img.shields.io/github/languages/top/Analysts001/Financial-Transaction-Risk-Analysis-Credit-Card-Fraud-Detection-project?style=flat-square" alt="Top Language" />
</p>

<p>
  <em>Turning transaction-level data into actionable fraud-risk insights.</em>
</p>

</div>

---

## 📌 Project Overview

**Financial Transaction Risk Analysis & Credit Card Fraud Detection** is an end-to-end data analytics project focused on identifying fraudulent transaction patterns, understanding transaction behavior, and generating risk-oriented business insights.

The project combines:

* 🐍 Python-based exploratory data analysis
* 🧹 Data quality and consistency checks
* 📊 Statistical and visual analysis
* 🗄️ PostgreSQL-based SQL analysis
* 🚨 Fraud transaction investigation
* 💰 High-value transaction analysis
* ⚠️ Transaction amount-based risk segmentation
* 💡 Business-oriented fraud insights

The analysis is built around the widely used credit-card transaction dataset containing **284,807 transactions and 31 columns**.

---

## 🎯 Business Objectives

The project answers several practical fraud and risk-management questions:

| Business Question                                         | Analytical Approach       |
| --------------------------------------------------------- | ------------------------- |
| How many transactions are fraudulent?                     | SQL aggregation           |
| What percentage of transactions are fraud?                | Fraud-rate calculation    |
| How severe is the class imbalance?                        | Distribution analysis     |
| Are high-value transactions more suspicious?              | Amount analysis           |
| What patterns distinguish fraud from legitimate activity? | EDA                       |
| Can transactions be grouped into risk categories?         | SQL risk segmentation     |
| Which transactions require deeper investigation?          | Fraud filtering + ranking |

---

## 📊 Dataset at a Glance

| Metric                       |                      Value |
| ---------------------------- | -------------------------: |
| **Total Transactions**       |                **284,807** |
| **Total Features / Columns** |                     **31** |
| **Input Variables**          | `Time`, `V1–V28`, `Amount` |
| **Target Variable**          |                    `Class` |
| **Legitimate Class**         |                        `0` |
| **Fraud Class**              |                        `1` |
| **Dataset Type**             |   Credit Card Transactions |

The notebook confirms a dataset shape of **284,807 rows × 31 columns**.

The dataset contains:

* `Time` — elapsed time between transactions
* `V1`–`V28` — anonymized transaction features
* `Amount` — transaction amount
* `Class` — fraud indicator

---

# 📥 Dataset & SQL Download

## 📊 Credit Card Dataset

The original transaction dataset is provided externally through Google Drive.

### Dataset Details

```text
File Name   : creditcard_dataset.csv
Rows        : 284,807
Columns     : 31
Target      : Class
Normal      : 0
Fraud       : 1
```

### 🔗 Download Dataset

**[⬇️ Download `creditcard_dataset.csv` — Google Drive](https://drive.google.com/file/d/1KoT9LT58FXuGACfL5qh7-NoXTwhyRMW1/view?usp=sharing)**

---

## 🗄️ PostgreSQL SQL Dump

The SQL dump contains the database data required to reproduce the PostgreSQL analysis environment.

### 🔗 Download SQL Dump

**[⬇️ Download PostgreSQL SQL Dump — Google Drive](https://drive.google.com/file/d/1yoaqtB4P189IlvIWTIFapnpob1B5Rv1i/view?usp=sharing)**

---

## 🧭 Project Architecture

```text
                    ┌──────────────────────┐
                    │  Credit Card Data    │
                    │    284,807 Rows      │
                    │      31 Columns      │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │   Data Preparation   │
                    │  • Schema Checks     │
                    │  • Null Checks       │
                    │  • Data Types        │
                    └──────────┬───────────┘
                               │
                               ▼
              ┌─────────────────────────────────┐
              │     Exploratory Data Analysis   │
              │                                 │
              │  • Fraud Distribution           │
              │  • Amount Analysis              │
              │  • Time Patterns                │
              │  • Feature Behaviour            │
              └────────────────┬────────────────┘
                               │
                ┌──────────────┴──────────────┐
                ▼                             ▼
      ┌──────────────────┐          ┌──────────────────┐
      │ Python Analysis  │          │ SQL Analysis     │
      │                  │          │                  │
      │ Pandas           │          │ PostgreSQL       │
      │ NumPy            │          │ Fraud KPIs       │
      │ Matplotlib       │          │ Risk Segments    │
      │ Seaborn          │          │ High-value Txns  │
      └────────┬─────────┘          └────────┬─────────┘
               │                             │
               └──────────────┬──────────────┘
                              ▼
                   ┌──────────────────────┐
                   │ Business Insights    │
                   │ & Risk Signals       │
                   └──────────────────────┘
```

---

# 🧹 Data Preparation

The first stage focuses on understanding the structure and quality of the transaction data.

### Checks performed

* Dataset shape
* Column names
* Data types
* Missing values
* Initial observations
* Target-class distribution
* Transaction amount distribution
* Dataset consistency

Python is used to load and inspect the data:

```python
import pandas as pd

df = pd.read_csv("creditcard.csv")

df.head()
df.info()
df.shape
```

---

# 🔎 Exploratory Data Analysis

The EDA stage investigates transaction behavior and potential fraud signals.

## Major Analysis Areas

### 1. Fraud vs Legitimate Transactions

The project compares:

* Fraudulent transactions
* Legitimate transactions
* Overall transaction distribution
* Relative class frequency

This is especially important because fraud datasets are typically **highly imbalanced**.

---

### 2. Transaction Amount Analysis

Transaction amounts are examined to determine whether monetary value can help explain fraudulent activity.

The analysis investigates:

* Average transaction behavior
* High-value transactions
* Fraud transaction amounts
* Amount distribution
* Relationship between amount and fraud

### Key takeaway

> **Transaction amount alone should not be treated as a complete fraud indicator.**

Amount is more useful when combined with behavioral and temporal signals.

---

### 3. Time-Based Analysis

The `Time` feature is investigated to identify potential temporal behavior and concentration of suspicious transactions.

This can support future extensions such as:

* Hourly fraud monitoring
* Transaction velocity
* Time-window anomaly detection
* Unusual transaction timing

---

### 4. Anonymized Feature Analysis

The dataset contains anonymized variables `V1`–`V28`.

These features can be explored to understand how legitimate and fraudulent transactions differ statistically.

---

# 🗄️ SQL Analysis

The repository includes:

```text
Query.sql
```

The SQL file contains several practical fraud-analysis queries.

---

## 📌 SQL Analysis 1 — Transaction Summary

Calculates:

* Total transactions
* Total fraud cases
* Total legitimate transactions

```sql
SELECT
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS total_fraud,
    SUM(CASE WHEN class = 0 THEN 1 ELSE 0 END) AS total_legit
FROM transactions;
```

---

## 📌 SQL Analysis 2 — Fraud Percentage

Calculates the overall percentage of fraudulent transactions.

```sql
SELECT
    ROUND((SUM(class)::decimal / COUNT(*)) * 100, 2)
    AS fraud_percentage
FROM transactions;
```

This provides a simple business KPI for monitoring the fraud rate.

---

## 📌 SQL Analysis 3 — High-Value Transactions

The top 10 transactions by transaction amount are extracted:

```sql
SELECT *
FROM transactions
ORDER BY amount DESC
LIMIT 10;
```

This helps investigators focus initially on the highest-value transactions.

---

## 📌 SQL Analysis 4 — Fraud Transactions

Fraudulent transactions are isolated for investigation:

```sql
SELECT *
FROM transactions
WHERE class = 1
ORDER BY amount DESC;
```

This enables focused analysis of suspicious transaction activity.

---

# ⚠️ Risk Segmentation

The project implements a simple transaction-amount-based segmentation framework.

```text
                 TRANSACTION AMOUNT
                         │
          ┌──────────────┼──────────────┐
          │              │              │
          ▼              ▼              ▼
       < $100        $100–$1,000       > $1,000
          │              │              │
          ▼              ▼              ▼
      LOW RISK       MEDIUM RISK      HIGH RISK
```

The SQL implementation:

```sql
CASE
    WHEN amount < 100 THEN 'Low Risk'
    WHEN amount BETWEEN 100 AND 1000 THEN 'Medium Risk'
    ELSE 'High Risk'
END
```

Each segment is evaluated using:

* Number of transactions
* Fraud cases
* Average fraud rate

### ⚠️ Important

These labels are **analytical categories**, not a validated production fraud score.

A production fraud system would require additional variables, validation, threshold optimization, monitoring, and business calibration.

---

# 💡 Key Insights

## 🚨 1. Severe Class Imbalance

Fraud represents only a small fraction of the overall transaction population.

This makes fraud analysis different from ordinary classification problems and increases the importance of:

* Precision
* Recall
* Fraud capture rate
* False-positive management

---

## 💰 2. Amount Is Not Sufficient by Itself

Large transactions can deserve additional scrutiny, but transaction amount alone cannot explain all fraudulent behavior.

A stronger fraud framework should combine:

```text
Transaction Amount
        +
Transaction Time
        +
Behavioral Features
        +
Historical Patterns
        +
Transaction Velocity
```

---

## ⏱️ 3. Temporal Patterns Matter

Time-based transaction behavior can reveal suspicious activity that amount-based analysis may miss.

This creates opportunities for future:

* Time-window analysis
* Velocity checks
* Unusual-hour monitoring
* Sequence-based fraud analysis

---

## 🧮 4. SQL Makes Fraud Analysis Reproducible

Using SQL allows fraud-monitoring metrics to be reproduced consistently.

Examples:

```text
Total Transactions
        ↓
Fraud Transactions
        ↓
Fraud Percentage
        ↓
High-Value Transactions
        ↓
Risk Segmentation
        ↓
Fraud Rate by Segment
```

---

# 🛠️ Technology Stack

| Technology              | Purpose                      |
| ----------------------- | ---------------------------- |
| 🐍 **Python**           | Data analysis                |
| 🐼 **Pandas**           | Data cleaning & manipulation |
| 🔢 **NumPy**            | Numerical analysis           |
| 📊 **Matplotlib**       | Visualization                |
| 📉 **Seaborn**          | Statistical visualization    |
| 🗄️ **PostgreSQL**      | SQL analysis & segmentation  |
| 🧪 **Jupyter Notebook** | Analysis environment         |
| 💻 **VS Code**          | Development                  |

---

# 📁 Repository Structure

```text
Financial-Transaction-Risk-Analysis-Credit-Card-Fraud-Detection-project/
│
├── 📓 fraud_analysis.ipynb
│   └── Python EDA and fraud analysis
│
├── 🗄️ Query.sql
│   └── PostgreSQL fraud & risk-analysis queries
│
├── 📄 README.md
│   └── Project documentation
│
└── 📦 creditcard.csv
    └── Credit card transaction dataset
```

> The externally hosted dataset and SQL dump are linked above to keep the repository lightweight.

---

# 🚀 How to Run the Project

## 1. Clone the Repository

```bash
git clone https://github.com/Analysts001/Financial-Transaction-Risk-Analysis-Credit-Card-Fraud-Detection-project.git

cd Financial-Transaction-Risk-Analysis-Credit-Card-Fraud-Detection-project
```

---

## 2. Create a Virtual Environment

### Windows

```bash
python -m venv .venv

.venv\Scripts\activate
```

### macOS / Linux

```bash
python3 -m venv .venv

source .venv/bin/activate
```

---

## 3. Install Python Dependencies

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

---

## 4. Launch Jupyter Notebook

```bash
jupyter notebook fraud_analysis.ipynb
```

---

## 5. Set Up PostgreSQL

Load the transaction dataset into PostgreSQL and create the required table.

Then open:

```text
Query.sql
```

and execute the analytical queries using:

* pgAdmin
* PostgreSQL CLI
* VS Code SQL extension
* Another PostgreSQL-compatible client

---

# 📦 Project Deliverables

| Deliverable                     | Included |
| ------------------------------- | :------: |
| Credit Card Dataset             |     ✅    |
| Python EDA                      |     ✅    |
| Data Quality Checks             |     ✅    |
| Fraud Distribution Analysis     |     ✅    |
| Amount Analysis                 |     ✅    |
| Time Analysis                   |     ✅    |
| PostgreSQL Queries              |     ✅    |
| Fraud KPI Analysis              |     ✅    |
| High-Value Transaction Analysis |     ✅    |
| Risk Segmentation               |     ✅    |
| Business Insights               |     ✅    |

---

# 💼 Resume-Ready Description

### Financial Transaction Risk Analysis & Credit Card Fraud Detection

* Analyzed **284,807 credit card transactions across 31 features** using Python, Pandas, NumPy, Matplotlib, and Seaborn to investigate fraud patterns, class imbalance, transaction behavior, and temporal signals.
* Developed **PostgreSQL fraud-analysis queries** to calculate transaction KPIs, fraud percentage, isolate fraudulent transactions, identify high-value transactions, and compare fraud rates across transaction-risk segments.
* Performed exploratory risk analysis and translated transaction-level findings into **business-oriented fraud-monitoring insights**, highlighting the limitations of amount-only detection and the importance of behavioral and time-based signals.

---

# 🧠 Skills Demonstrated

```text
Python                    ████████████████████
Pandas & NumPy            ████████████████████
Exploratory Data Analysis ███████████████████░
SQL / PostgreSQL          ███████████████████░
Fraud Risk Analysis       ██████████████████░░
Data Visualization        ██████████████████░░
Business Insight          █████████████████░░░
```

> The bars are visual indicators of project focus, not measured performance scores.

---

# 🔮 Future Enhancements

The project can be extended into a more advanced fraud-risk analytics system through:

### 🤖 Machine Learning

* Logistic Regression
* Random Forest
* XGBoost
* Isolation Forest
* Neural-network-based anomaly detection

### ⚙️ Feature Engineering

* Transaction velocity
* Rolling transaction count
* Average transaction value
* Amount deviation from user history
* Time-window features
* Behavioral profiles

### 📈 Model Evaluation

For an ML extension, appropriate evaluation would include:

* Precision
* Recall
* F1 Score
* ROC-AUC
* PR-AUC
* Confusion Matrix
* Cost-sensitive evaluation

### 🚨 Production Fraud Monitoring

```text
Transaction
     │
     ▼
Feature Generation
     │
     ▼
Risk Scoring
     │
     ├───────────────┐
     ▼               ▼
 Low Risk        High Risk
     │               │
 Approve        Review / Block
```

---

# ⚠️ Analytical Limitations

This project is primarily an **EDA + SQL fraud-risk analytics project**.

It does not currently claim:

* Production deployment
* Real-time transaction scoring
* A validated machine-learning classifier
* Accuracy/precision/recall benchmarks
* ROC-AUC or PR-AUC performance
* Live fraud prevention

The `V1–V28` variables are anonymized features from the source dataset, so their individual business meanings are not interpreted directly.

---

# 📚 Project Resources

### 🔗 GitHub Repository

[Financial Transaction Risk Analysis & Credit Card Fraud Detection](https://github.com/srideepgit/Credit-Card-Fraud-Detection-Risk-Analysis.git)

### 📊 Dataset

[Download Credit Card Fraud Dataset](https://drive.google.com/file/d/1zdUqPaD8x3WWkyr-EX80Nf16R96tN3dU/view?usp=sharing)

### 🗄️ SQL Dump

[Download PostgreSQL SQL Dump](https://drive.google.com/file/d/1ki7dbLicozkJ9lMKvj9o1z6-tGakHTuH/view?usp=sharing)

### 📓 Notebook

[Open `fraud_analysis.ipynb`](./fraud_analysis.ipynb)

### 🗄️ SQL Queries

[Open `Query.sql`](./Query.sql)

---

# ⭐ If You Find This Project Useful

Consider giving the repository a ⭐ **Star** and exploring the analysis notebook and SQL queries.

<div align="center">

<br>

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:4F46E5,50:06B6D4,100:14B8A6&height=140&section=footer" width="100%" alt="Animated project footer" />

</div>
