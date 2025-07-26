![Power BI](https://img.shields.io/badge/Tool-PowerBI-yellow)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)



# 🏥 HCAHPS Survey Insights – Healthcare Data Analysis with SQL & Power BI

> **Challenge:** [Maven Analytics - Healthcare Challenge #26](https://mavenanalytics.io/challenges/maven-healthcare-challenge/26)  
> **Role:** Data Analyst | Tools: Power BI, Power Query

---

## 📌 Project Overview

In this challenge, I stepped into the role of a **healthcare data analyst**, examining **9 years of HCAHPS survey data** to uncover insights into **patient satisfaction trends across the U.S.**  

Although this project is fictional, my analysis reflects a data-driven mindset aligned with the **AHA’s mission to improve healthcare experiences**. Through **data cleaning, manipulation** and **Power BI visual storytelling**, this project aims to simulate real-world decision-making in healthcare analytics.


---

## 🧹 Data Cleaning & Preprocessing

> 🔄 Cleaned and transformed raw patient survey data into a structured analytical model.

- **Defined clear data relationships** using primary/foreign key structure across all tables.
- Handled **5,772+ missing values** in critical fields like *Completed Survey* by:
  - Parsing mixed-type entries (`300 or more`, `100 to 299`, etc.).
  - Using **box plots** to detect skewness and decide between **mean or median imputation**.
- Replaced textual ranges with **numerical estimations** for accurate aggregation.
- **Excluded 2 non-state territories** (`U.S. Virgin Islands`, `Puerto Rico`) due to data incompleteness in supporting tables (e.g., State Results).

---

## 🛠️ Data Analysis & Manipulation

- Explored trends in **patient satisfaction**, **survey participation**, and **state-level care quality**.

---

## 📈 Interactive Power BI Dashboard

> 🧠 Insights are embedded directly into a **clean, interactive Power BI dashboard**.

- Highlights overall trends, state rankings, and underperforming regions.
- Drill-down capabilities by **year**, **hospital**, **survey category**, and **rating type**.
- Embedded recommendations and key takeaways into the report.

---

## 🧮 Tech Stack

| Tool        | Role                      |
|-------------|---------------------------|
| **Power BI**    | Visualization & storytelling |
| **Power Query** | Data shaping & schema modeling |
| **Excel**       | Ad hoc exploration |

---

## 📂 Project Files

- `HCAHPS.pbix` – Interactive Power BI dashboard  
- `HCAHPS.sql` – All data analysis queries  
- `HCAHPS CLEANED.zip` – Cleaned data used for the dashboard  
- `HCAHPS+Patient+Survey.zip` – Raw dataset (as provided by Maven)  

---

## 🩺 Recommendations (Based on Analysis)

- **Improve discharge planning communication** in underperforming states.
- **Encourage patient survey completion** through mobile reminders in regions with low participation.
- **Focus on staff responsiveness** in low-rated hospitals — correlates highly with overall satisfaction.

---

## 💡 Takeaways

- Data quality challenges (e.g. inconsistent ranges, missing values) demand domain-aligned decisions.
- Imputation strategy should be based on **distribution shape** — not just averages.
- Healthcare BI isn't just numbers — it's about **impacting patient experience through insight**.

---

## 🏆 Achievements

- Ranked in the **Top 20 out of 2,000+ participants** in the Maven Analytics Healthcare Challenge.
- Recognized for exceptional **data storytelling**, **dashboard design**, and **analytical depth**.

---

## 📜 License

This project is licensed under the MIT License. You are free to use, modify, and distribute this project with proper attribution.

---
## Snapshots

![Screenshot (265)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/6b8ed924-06b8-48d4-becf-b6c6c1403539)
![Screenshot (264)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/2ad237d7-9ad6-4fdf-914b-334727ab53db)
![Screenshot (266)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/ed31b640-4162-4f98-b91c-fcab76636d44)
![Screenshot (267)](https://github.com/Rohilwiz/HCAHPS-SURVEY-INSIGHTS/assets/132672210/0dbe2e82-cf6e-44e1-a2d6-3ef962558da5)
