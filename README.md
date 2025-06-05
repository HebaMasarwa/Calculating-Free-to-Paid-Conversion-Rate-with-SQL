# Calculating-Free-to-Paid-Conversion-Rate-with-SQL

This project analyzes user behavior on an online learning platform, focusing on conversion metrics from registration to engagement and purchase.

## 📁 Project Files

- **`db_course_conversions.sql`**  
  SQL script to create and populate the database tables used in the analysis.

- **`script.sql`**  
  Contains the main SQL query that calculates key user behavior metrics:
  - Average duration between registration and first-time engagement (`av_reg_watch`)
  - Average duration between first-time engagement and purchase (`av_watch_purch`)
  - Conversion rate (percentage of users who purchased after engaging)

- **`analysis`**  
  A written summary and interpretation of the results derived from the main SQL query, highlighting user engagement patterns and areas for improvement.

## 📊 Key Insights

- **Conversion Rate:** 11%, which is considered strong compared to the industry average (2–5%).
- **Avg. Time from Registration to Engagement:** 3–4 days, indicating early user interest.
- **Avg. Time from Engagement to Purchase:** ~26 days, suggesting room to improve upsell strategy.

## 🛠️ How to Use

1. Load `db_course_conversions.sql` into your SQL environment to create the database.
2. Run `script.sql` to generate the metrics.
3. Review the `analysis` file for insights and recommendations.


