# 🧠 Student Mental Health Risk Assessment
### *From Data to Diagnosis: A Strategic Analysis of Depression Drivers*

![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

---

## 📊 Dashboard Preview
![Dashboard Screenshot](https://github.com/RohitRa200/Student-Mental-Health-Risk-Assessment/blob/d2ba94d0d269243b73ad58283496bf09abecf74d/Screenshot%202025-11-26%20145814.png)
*> **[Click Here to Interact with the Live Dashboard on Tableau Public]** (https://github.com/RohitRa200/Student-Mental-Health-Risk-Assessment/blob/34acb3d03ec074ac8e48000d6f9720885644a83d/Student_Depression_Dashboard.twb)*

---

## 📌 Executive Summary
**The Business Problem:**
Rising mental health crises in universities are often attributed to poor lifestyle choices (sleep, diet) or general academic rigor. University administrators lack data-driven insights to target interventions effectively.

**The Solution:**
I conducted an end-to-end analysis of 500+ student records to isolate the root causes of depression and suicide risk. Using **SQL** for complex segmentation and **Tableau** for visualization, I developed a diagnostic dashboard to identify high-risk cohorts.

**The Impact:**
The analysis disproved the "Lifestyle Hypothesis" and identified **Academic Pressure** and **Financial Stress** as the primary structural drivers of risk, enabling targeted resource allocation.

---

## 🔍 Key Insights & Discovery
My analysis uncovered four critical findings that contradict common intuition:

### 1. The "Sleep Paradox" (Myth Busted)
* **Hypothesis:** Sleep deprivation is a leading cause of suicide risk.
* **Finding:** Data revealed that students getting the recommended **7-8 hours of sleep** reported the **highest suicide risk (58%)**, compared to sleep-deprived students (49%).
* **Conclusion:** Sleep is a symptom, not a driver. Interventions focusing on "Sleep Hygiene" will yield low ROI.

### 2. The Saturation Point
* **Finding:** **Academic Pressure** acts as a "Universal Destroyer." At **Pressure Level 5 (Extreme)**, suicide risk saturates at **~85%** regardless of gender, diet, or family history.
* **Insight:** Resilience factors (like no family history of mental illness) fail to protect students once pressure hits this critical threshold.

### 3. The Gender-Financial Gap
* **Finding:** While Academic Pressure affects all genders equally, **Male students** are **13% more sensitive** to Financial Stress (78% risk rate) compared to Female students (65%).
* **Recommendation:** Financial Aid counseling should aggressively target the male student population.

### 4. The "Silent Killer" (Dietary Habits)
* **Finding:** Independent of stress levels, students with **Unhealthy Dietary Habits** showed a **62.7% depression rate**, nearly double that of healthy eaters (39%).

---

## 🛠️ Technical Methodology

### Phase 1: Data Engineering (SQL)
* **Database Design:** Created a normalized database `[tablue project 1]` and imported raw survey data.
* **Data Cleaning:**
    * Standardized categorical variables (Gender normalization).
    * Handled NULL values and text-to-integer conversions for aggregations.
* **Feature Engineering:**
    * Created `Age_Group` buckets (18-24, 25-30) using `CASE` statements for demographic clustering.
    * Quantified "Sleep Duration" text strings into numerical averages for correlation analysis.

### Phase 2: Analysis & Logic (8 SQL Query Files)
The repository contains 8 SQL scripts covering the full analysis lifecycle:
* `SQLQuery1-2.sql`: Initial Data Inspection & Cleaning.
* `SQLQuery3-4.sql`: Feature Engineering (Age Grouping) & Univariate Analysis.
* `SQLQuery5-6.sql`: **Multivariate Analysis** (e.g., Toxic Burnout: calculating depression rates by Study Hours + Satisfaction).
* `SQLQuery7-8.sql`: **Risk Segmentation** (calculating weighted suicide risk rates by Demographic cohorts).

### Phase 3: Visualization (Tableau)
* **Design Architecture:** Utilized a "Card Layout" with a Grid System for a professional, executive-style report.
* **Advanced Charts:**
    * **Diverging Line Charts:** To visualize the "Gender Gap" in financial stress.
    * **Convergence Charts:** To show the "Saturation Effect" of family history at peak pressure.
* **User Experience:** Implemented Dashboard Actions to allow filtering by Risk Profile.

---

## 💡 Strategic Recommendations
Based on this data, I propose the following interventions for university stakeholders:
1.  **Structural Reform:** Cap academic workload during peak exam seasons to prevent students from hitting the "Level 5" saturation point.
2.  **Targeted Financial Support:** Launch a financial literacy and aid program specifically marketed toward male students.
3.  **Holistic Health Initiative:** Shift budget from Sleep Awareness campaigns to subsidized healthy meal plans in cafeterias, targeting the "Dietary" risk factor.

---

## 👨‍💻 About Me
I am a Data Analyst passionate about translating raw data into strategic business insights. I specialize in SQL for data manipulation and Tableau for storytelling.

* **LinkedIn:** [https://www.linkedin.com/in/rohitrajanalyticsmind/]
* **Portfolio:** [https://rohitra200.github.io/rohitraj.github.io/]
* **Email:** [rohitrajrajrohit60@gmail.com]

*Feel free to star ⭐ this repository if you find the analysis interesting!*
