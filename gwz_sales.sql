WITH sales_group_by AS (
  SELECT 
    date_date
    ,category_1
    ,ROUND(SUM(turnover),2) AS tot_turnover
  FROM `elevated-oven-437909-q6.course14.gwz_sales`
  WHERE category_1 IS NOT NULL
  GROUP BY date_date,category_1
  ORDER BY date_date
)
SELECT 
  sales_group_by.date_date
  ,sales_group_by.category_1
  ,sales_group_by.tot_turnover
  ,SUM(sales_group_by.tot_turnover)OVER(PARTITION BY category_1 ORDER BY date_date)AS tot_turnover
FROM sales_group_by
ORDER BY sales_group_by.category_1, date_date
