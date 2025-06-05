
-- creating the needed cols
-- cresting first date watched 
-- creating first purchased watched
-- date diff registration watch
-- date diff watch purchase 
-- Create the Main Query
-- conversion_rate
-- av_reg_watch
-- av_watch_purch


WITH student_metrics AS (
    SELECT 
        si.student_id, 
        si.date_registered,
        sep.first_date_watched,
        sep.first_date_purchased,
        DATEDIFF(sep.first_date_watched, si.date_registered) AS date_diff_reg_watch,
        DATEDIFF(sep.first_date_purchased, sep.first_date_watched) AS date_diff_watch_purch
    FROM student_info si
    LEFT JOIN (
        SELECT 
            se.student_id,
            MIN(se.date_watched) AS first_date_watched,
            MIN(sp.date_purchased) AS first_date_purchased
        FROM student_engagement se
        LEFT JOIN student_purchases sp 
            ON se.student_id = sp.student_id
        GROUP BY se.student_id
    ) AS sep ON si.student_id = sep.student_id
    WHERE sep.first_date_watched IS NOT NULL
      AND (sep.first_date_purchased IS NULL OR sep.first_date_watched <= sep.first_date_purchased)
)
SELECT
    (COUNT(date_diff_watch_purch) / COUNT(*))*100.0 AS conversion_rate,
    AVG(date_diff_reg_watch) AS av_reg_watch,
    AVG(date_diff_watch_purch) AS av_watch_purch
FROM student_metrics;
