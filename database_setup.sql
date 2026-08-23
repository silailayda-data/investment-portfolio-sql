CREATE DATABASE IF NOT EXISTS investment_portfolio;
USE investment_portfolio;

CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    age INT,
    risk_profile VARCHAR(20)
);

CREATE TABLE portfolios (
    portfolio_id INT PRIMARY KEY,
    client_id INT,
    portfolio_name VARCHAR(50),
    total_value DECIMAL(12,2),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE assets (
    asset_id INT PRIMARY KEY,
    asset_name VARCHAR(50) NOT NULL,
    asset_type VARCHAR(30),
    current_price DECIMAL(10,2)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    portfolio_id INT,
    asset_id INT,
    transaction_type VARCHAR(10),
    quantity INT,
    transaction_price DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (portfolio_id) REFERENCES portfolios(portfolio_id),
    FOREIGN KEY (asset_id) REFERENCES assets(asset_id)
);

