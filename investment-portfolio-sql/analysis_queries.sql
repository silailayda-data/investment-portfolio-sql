USE investment_portfolio;

-- 1. Top 3 clients by portfolio value
SELECT clients.client_name,
       portfolios.portfolio_name,
       portfolios.total_value
FROM clients
INNER JOIN portfolios
ON clients.client_id = portfolios.client_id
ORDER BY portfolios.total_value DESC
LIMIT 3;


-- 2. Total portfolio value by risk profile
SELECT clients.risk_profile,
       SUM(portfolios.total_value) AS total_portfolio_value
FROM clients
INNER JOIN portfolios
ON clients.client_id = portfolios.client_id
GROUP BY clients.risk_profile
ORDER BY total_portfolio_value DESC;


-- 3. Most actively traded assets by quantity
SELECT assets.asset_name,
       SUM(transactions.quantity) AS total_quantity
FROM assets
INNER JOIN transactions
ON assets.asset_id = transactions.asset_id
GROUP BY assets.asset_name
ORDER BY total_quantity DESC;


-- 4. Transaction volume by BUY and SELL
SELECT transaction_type,
       SUM(quantity * transaction_price) AS total_volume
FROM transactions
GROUP BY transaction_type;


-- 5. Total transaction volume by client
SELECT clients.client_name,
       SUM(transactions.quantity * transactions.transaction_price)
       AS total_transaction_volume
FROM clients
INNER JOIN portfolios
ON clients.client_id = portfolios.client_id
INNER JOIN transactions
ON portfolios.portfolio_id = transactions.portfolio_id
GROUP BY clients.client_name
ORDER BY total_transaction_volume DESC;


-- 6. Portfolio size classification
SELECT clients.client_name,
       portfolios.total_value,
       CASE
           WHEN portfolios.total_value >= 200000 THEN 'Large'
           WHEN portfolios.total_value >= 150000 THEN 'Medium'
           ELSE 'Small'
       END AS portfolio_size
FROM clients
INNER JOIN portfolios
ON clients.client_id = portfolios.client_id
ORDER BY portfolios.total_value DESC;