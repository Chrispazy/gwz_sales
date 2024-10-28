SELECT
  date_date
  ,ROUND(SUM(turnover),2) AS turnover
  ,ROUND(SUM(purchase_cost),2) AS purchase_cost
FROM `elevated-oven-437909-q6.course14.gwz_sales`
GROUP BY date_date
ORDER BY date_date ASC
