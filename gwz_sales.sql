SELECT
  date_date
  ,category_1
  ,SUM(turnover) AS turnover
FROM `elevated-oven-437909-q6.course14.gwz_sales`
GROUP BY date_date, category_1
ORDER BY date_date
