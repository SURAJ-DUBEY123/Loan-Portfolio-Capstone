# Loan Portfolio & Credit Risk Analytics

## Project Overview

This project analyzes a loan portfolio to understand loan distribution, borrower characteristics, portfolio performance, and credit risk patterns.

The analysis was performed using a public Lending Club-style loan dataset containing 10,000 loan records.

## Objectives

- Analyze overall loan portfolio size and composition
- Understand loan distribution by purpose, credit grade, and term
- Examine loan status and portfolio performance
- Analyze credit risk patterns
- Study the relationship between risk, credit grade, and debt-to-income ratio
- Analyze monthly loan issuance
- Create SQL-based portfolio analysis
- Build an interactive Power BI dashboard

## Tools & Technologies

- **Python** — Data cleaning, feature engineering and analysis
- **Pandas & NumPy** — Data processing
- **Matplotlib & Seaborn** — Data visualization
- **DuckDB / SQL** — Portfolio analysis
- **Power BI** — Interactive dashboard
- **Google Colab** — Python analysis environment

## Dataset

The dataset contains 10,000 loan records with information related to:

- Loan amount
- Interest rate
- Loan term
- Credit grade
- Loan status
- Loan purpose
- Annual income
- Debt-to-income ratio
- Employment length
- Homeownership
- Credit utilization
- Credit history

The monetary values in the analysis are in **USD**.

## Data Preparation

The dataset was cleaned and transformed by:

- Selecting relevant portfolio and borrower attributes
- Handling missing numerical and categorical values
- Removing highly incomplete joint-income variables from the main analysis
- Creating credit utilization
- Creating DTI groups
- Creating income groups
- Creating project-defined risk categories
- Converting loan issue month into a date field
- Validating the final dataset for missing values and duplicates

The final analytical dataset contains **10,000 records and 30 columns**.

## Risk Categorization

For this project, loan statuses were grouped into three analytical categories:

| Risk Category | Loan Statuses |
|---|---|
| High Risk | Charged Off, Default |
| Medium Risk | Late (31-120 days), Late (16-30 days) |
| No Current Problem | Remaining statuses |

> These categories are defined specifically for this project and are not official Lending Club risk classifications.

## Key Findings

- Total loans analyzed: **10,000**
- Total loan amount: **$163.62M**
- Outstanding balance: **$144.59M**
- Average loan amount: **$16.36K**
- Average interest rate: **12.43%**
- Total interest paid: **$6.00M**
- Debt consolidation represents the largest loan-purpose segment by total loan amount.
- Credit grades A, B, and C represent the majority of the portfolio.
- 36-month loans are more common than 60-month loans.
- Most loans are currently classified as `Current`.
- The dataset contains a relatively small number of late and charged-off loans under the project-defined risk grouping.

## SQL Analysis

SQL was used to perform:

- Overall portfolio summary
- Portfolio analysis by loan purpose
- Portfolio analysis by credit grade
- Loan status distribution
- Risk category distribution
- Risk distribution within credit grades
- Risk distribution across DTI groups
- Monthly portfolio analysis

## Power BI Dashboard

The Power BI dashboard provides interactive analysis of:

- Portfolio KPIs
- Loan amount by purpose
- Loan status distribution
- Credit grade distribution
- Risk category by credit grade
- Monthly loan issuance
- Portfolio filtering by loan purpose and credit grade

## Limitations

- The dataset contains 10,000 sample loan records.
- Monthly analysis covers only January–March 2018.
- Risk categories are project-defined analytical groupings.
- The analysis identifies patterns and associations and does not establish causation.
- Some credit-grade categories contain relatively few observations.
- No machine learning prediction model was included because the project focuses on descriptive and analytical credit-risk assessment.

## Project Structure

```text
Loan_Portfolio_Credit_Risk_Analytics
├── data
│   └── loan_portfolio_final.csv
├── notebook
│   └── Loan_Portfolio_Credit_Risk_Analysis.ipynb
├── sql
│   └── loan_analysis.sql
├── powerbi
│   └── Loan_Portfolio_Credit_Risk_Dashboard.pbix
├── report
└── README.md

Conclusion

This project demonstrates an end-to-end loan portfolio analytics workflow, covering data cleaning, feature engineering, exploratory analysis, SQL analysis, credit-risk analysis, and interactive dashboard development.