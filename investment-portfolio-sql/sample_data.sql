USE investment_portfolio;

INSERT INTO clients
VALUES
(1, 'Sila', 'Izmir', 23, 'Medium'),
(2, 'Ece', 'Istanbul', 27, 'High'),
(3, 'Mert', 'Ankara', 31, 'Low'),
(4, 'Can', 'Izmir', 25, 'High'),
(5, 'Zeynep', 'Bursa', 29, 'Medium'),
(6, 'Emre', 'Istanbul', 35, 'Low');

INSERT INTO portfolios
VALUES
(101, 1, 'Growth Portfolio', 185000.00),
(102, 2, 'Aggressive Portfolio', 240000.00),
(103, 3, 'Conservative Portfolio', 120000.00),
(104, 4, 'Tech Portfolio', 310000.00),
(105, 5, 'Balanced Portfolio', 195000.00),
(106, 6, 'Income Portfolio', 145000.00);

INSERT INTO assets
VALUES
(1, 'Apple', 'Stock', 230.00),
(2, 'Tesla', 'Stock', 340.00),
(3, 'Gold ETF', 'ETF', 210.00),
(4, 'Microsoft', 'Stock', 510.00),
(5, 'Bond Fund', 'Fund', 105.00),
(6, 'S&P 500 ETF', 'ETF', 690.00);

INSERT INTO transactions
(transaction_id, portfolio_id, asset_id, transaction_type, quantity, transaction_price, transaction_date)
VALUES
(1001, 101, 1, 'BUY', 20, 220.00, '2026-01-15'),
(1002, 101, 3, 'BUY', 15, 200.00, '2026-02-10'),
(1003, 102, 2, 'BUY', 25, 310.00, '2026-01-22'),
(1004, 102, 1, 'BUY', 30, 215.00, '2026-03-05'),
(1005, 103, 5, 'BUY', 50, 100.00, '2026-02-18'),
(1006, 104, 4, 'BUY', 35, 470.00, '2026-01-30'),
(1007, 104, 2, 'BUY', 20, 300.00, '2026-03-12'),
(1008, 105, 6, 'BUY', 18, 650.00, '2026-02-25'),
(1009, 105, 3, 'BUY', 12, 205.00, '2026-04-02'),
(1010, 106, 5, 'BUY', 40, 102.00, '2026-03-20'),
(1011, 101, 1, 'SELL', 5, 235.00, '2026-05-10'),
(1012, 104, 2, 'SELL', 4, 355.00, '2026-06-01');