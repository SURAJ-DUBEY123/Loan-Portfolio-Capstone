
-- =========================================================
-- LOAN PORTFOLIO & CREDIT RISK ANALYTICS
-- SQL Analysis using DuckDB
-- Dataset: loan_portfolio_final.csv
-- =========================================================


-- =========================================================
-- 1. OVERALL PORTFOLIO KPIs
-- =========================================================

SELECT
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    SUM(balance) AS outstanding_balance,
    AVG(loan_amount) AS average_loan,
    AVG(interest_rate) AS average_interest_rate,
    SUM(paid_interest) AS total_interest_paid
FROM loans;


-- =========================================================
-- 2. LOAN PURPOSE ANALYSIS
-- =========================================================

SELECT
    loan_purpose,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    AVG(loan_amount) AS average_loan
FROM loans
GROUP BY loan_purpose
ORDER BY total_loan_amount DESC;


-- =========================================================
-- 3. CREDIT GRADE ANALYSIS
-- =========================================================

SELECT
    grade,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    AVG(interest_rate) AS average_interest_rate
FROM loans
GROUP BY grade
ORDER BY grade;


-- =========================================================
-- 4. LOAN STATUS DISTRIBUTION
-- =========================================================

SELECT
    loan_status,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount
FROM loans
GROUP BY loan_status
ORDER BY total_loans DESC;


-- =========================================================
-- 5. RISK CATEGORY ANALYSIS
-- =========================================================

SELECT
    risk_category,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount
FROM loans
GROUP BY risk_category
ORDER BY total_loans DESC;


-- =========================================================
-- 6. RISK CATEGORY BY CREDIT GRADE
-- =========================================================

SELECT
    grade,
    risk_category,
    COUNT(*) AS total_loans,
    ROUND(
        100.0 * COUNT(*) /
        SUM(COUNT(*)) OVER (PARTITION BY grade),
        2
    ) AS percentage_within_grade
FROM loans
GROUP BY grade, risk_category
ORDER BY grade, risk_category;


-- =========================================================
-- 7. RISK BY DTI GROUP
-- =========================================================

SELECT
    dti_group,
    risk_category,
    COUNT(*) AS total_loans,
    ROUND(
        100.0 * COUNT(*) /
        SUM(COUNT(*)) OVER (PARTITION BY dti_group),
        2
    ) AS percentage_within_dti
FROM loans
GROUP BY dti_group, risk_category
ORDER BY dti_group, risk_category;


-- =========================================================
-- 8. MONTHLY PORTFOLIO ANALYSIS
-- =========================================================

SELECT
    issue_month,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    AVG(loan_amount) AS average_loan
FROM loans
GROUP BY issue_month
ORDER BY MIN(issue_date);
