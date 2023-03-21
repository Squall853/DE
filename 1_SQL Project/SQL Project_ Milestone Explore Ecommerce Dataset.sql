-- Big project for SQL
-- Nguyen Ho Hong Dat _ DAC K10
-- Link instruction: https://docs.google.com/spreadsheets/d/1WnBJsZXj_4FDi2DyfLH1jkWtfTridO2icWbWCh7PLs8/edit#gid=0
-- table schema: https://support.google.com/analytics/answer/3437719?hl=en
#data
WITH 
	ga_session AS(
		SELECT 
			*,
			PARSE_DATE("%Y%m%d", date) date_formatted,
			FORMAT_DATE("%Y%m", PARSE_DATE("%Y%m%d", date)) year_month,
			FORMAT_DATE("%m", PARSE_DATE("%Y%m%d", date)) month
		FROM 
			`bigquery-public-data.google_analytics_sample.ga_sessions_*`
		WHERE  
			_table_suffix LIKE '2017%'
    ),
	visitor_Id_Query7 AS(
		SELECT
			DISTINCT fullVisitorId
		FROM
			ga_session,
			UNNEST(hits) hits,
			UNNEST(hits.product) product
		WHERE
			month = '07'
			AND product.v2ProductName = "YouTube Men's Vintage Henley"
			AND product.productRevenue IS NOT NULL)
-- Query 01: calculate total visit, pageview, transaction and revenue for Jan, Feb and March 2017 order by month
#standardSQL
SELECT 
	year_month month,
	COUNT(totals.visits) visits, 
	SUM(totals.pageviews) pageviews,
	SUM(totals.transactions) transactions,
	SUM(totals.totalTransactionRevenue)/1e6 revenue
FROM ga_session
WHERE month IN ('01', '02', '03')
GROUP BY year_month
ORDER BY year_month;

-- Query 02: Bounce rate per traffic source in July 2017
#standardSQL
SELECT 
	trafficSource.source source,
	SUM(totals.visits) total_visits,
	SUM(totals.bounces) total_no_of_bounces,
	ROUND(SUM(totals.bounces)/SUM(totals.visits)*100,2) bounce_rate
FROM 
	ga_session
WHERE 
	month = '07'
GROUP BY
	source
ORDER BY
	total_visits DESC;

-- Query 3: Revenue by traffic source by week, by month in June 2017
SELECT
	'Month' time_type,
	FORMAT_DATE("%Y%m", date_formatted) time,
	trafficSource.source SOURCE,
	SUM(totals.totalTransactionRevenue)/1e6 AS revenue
FROM
    ga_session
WHERE
    month = '06' AND totals.totalTransactionRevenue IS NOT NULL
GROUP BY
    time_type, time, SOURCE
UNION ALL
SELECT
	'Week' time_type,
    FORMAT_DATE("%Y%U", date_formatted) time,
    trafficSource.source SOURCE,
    SUM(totals.totalTransactionRevenue)/1e6 AS revenue
FROM
    ga_session
WHERE
    month = '06' AND totals.totalTransactionRevenue IS NOT NULL
GROUP BY
    time_type, time, SOURCE
ORDER BY
    source, time;

--Query 04: Average number of product pageviews by purchaser type (purchasers vs non-purchasers) in June, July 2017. 
--Note: totals.transactions >=1 for purchaser and totals.transactions is null for non-purchaser
#standardSQL
SELECT
	a.year_month,
	ROUND(avg_pageviews_purchase,4),
	ROUND(avg_pageviews_non_purchase,4)
FROM (
		SELECT
			year_month,
			SUM(totals.pageviews)/COUNT(DISTINCT fullVisitorId) avg_pageviews_purchase
		FROM
			ga_session
		WHERE
			MONTH IN ('06', '07')
			AND totals.transactions IS NOT NULL
		GROUP BY year_month
	) AS a
	JOIN (
		SELECT
			year_month,
			sum(totals.pageviews)/COUNT(DISTINCT fullVisitorId) avg_pageviews_non_purchase
		FROM
			ga_session
		WHERE
			MONTH IN ('06','07')
			AND totals.transactions IS NULL
		GROUP BY year_month
	) AS b
	ON
		a.year_month = b.year_month;
  
-- Query 05: Average number of transactions per user that made a purchase in July 2017
#standardSQL
SELECT
	year_month month,
	ROUND(SUM(totals.transactions)/COUNT(DISTINCT fullVisitorId),4) Avg_total_transactions_per_user
FROM
	ga_session
WHERE
	MONTH IN ('07')
	AND totals.transactions IS NOT NULL
GROUP BY
    year_month;

-- Query 06: Average amount of money spent per session
#standardSQL
SELECT
	year_month month,
	FORMAT("%'.2f",
      ROUND(SUM(totals.totalTransactionRevenue)/COUNT(visitNumber),2)
    ) avg_revenue_by_user_per_visit
FROM
    ga_session
WHERE
    MONTH IN ('07')
    AND totals.transactions IS NOT NULL
GROUP BY
    year_month;


-- Query 07: Other products purchased by customers who purchased product "YouTube Men's Vintage Henley" in July 2017.
--Output should show product name and the quantity was ordered.
#standardSQL
SELECT
	product.v2ProductName other_purchased_products,
	SUM(product.productQuantity) quantity
FROM
	ga_session,
	UNNEST(hits) hits,
	UNNEST(hits.product) product
WHERE
	month = '07'
	AND product.v2ProductName != "YouTube Men's Vintage Henley"
	AND product.productRevenue IS NOT NULL
	AND fullVisitorId IN (
				SELECT *
				FROM visitor_Id_Query7 )
GROUP BY
	other_purchased_products
ORDER BY
	quantity DESC;

--Query 08: Calculate cohort map from pageview to addtocart to purchase in last 3 month. For example, 100% pageview then 40% add_to_cart and 10% purchase.
#standardSQL
SELECT
	a.year_month month,
	num_product_view,num_addtocart, num_purchase,
	ROUND(100*num_addtocart/num_product_view,2) add_to_cart_rate,
	ROUND(100*num_purchase/num_product_view,2) purchase_rate
FROM (
		SELECT
			year_month,
			COUNT(hits.eCommerceAction.action_type) num_product_view
		FROM
			ga_session,
			UNNEST(hits) hits,
			UNNEST(hits.product) product
		WHERE
			month IN ('01', '02', '03')
			AND hits.eCommerceAction.action_type = '2'
		GROUP BY
			year_month
	) AS a 
	JOIN (
		SELECT
			year_month,
			COUNT(hits.eCommerceAction.action_type) num_addtocart
		FROM
			ga_session,
			UNNEST(hits) hits,
			UNNEST(hits.product) product
		WHERE
			month IN ('01', '02', '03')
			AND hits.eCommerceAction.action_type = '3'
		GROUP BY
			year_month
	) AS b
	ON
		a.year_month = b.year_month
	JOIN (
		SELECT
			year_month,
			COUNT(hits.eCommerceAction.action_type) num_purchase
		FROM
			ga_session,
			UNNEST(hits) hits,
			UNNEST(hits.product) product
		WHERE
			month IN ('01', '02', '03')
			AND hits.eCommerceAction.action_type = '6'
		GROUP BY
			year_month
	) AS c
	ON
		a.year_month = c.year_month
ORDER BY a.year_month;
