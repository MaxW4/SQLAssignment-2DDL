use portfolio_db;


INSERT INTO tbl_company (company_name, stock_ticker, industry)
VALUES 
    ('Google Alphabet Inc.', 'GOOG', 'Technology'),
    ('Microsoft Corporation', 'MSFT', 'Technology'),
    ('Apple Inc.', 'AAPL', 'Consumer Electronics'),
    ('Amazon.com', 'AMZN','Technology'),
    ('Tesla Inc.', 'TSLA', 'Auto Manufacturing');


INSERT INTO tbl_current_portfolio (stock_ticker, number_of_shares, purchase_date, purchase_price, current_price)
VALUES 
    ('GOOG', 50, '2023-09-07', 134.60, 136.64),
    ('MSFT', 75, '2023-09-07', 331.29, 373.04),
    ('AAPL', 100, '2023-09-07', 175.18, 195.84),
    ('AMZN', 150, '2023-09-07', 133.90, 147.42),
    ('TSLA', 150, '2023-09-07', 245.00, 243.84);



select company_name, tbl_current_portfolio.stock_ticker, number_of_shares, current_price from tbl_company, tbl_current_portfolio where tbl_company.stock_ticker= tbl_current_portfolio.stock_ticker;

select company_name as "Company Name", tbl_current_portfolio.stock_ticker as "Stock Ticker", number_of_shares as "Number of Shares", CONCAT('Current Value', FORMAT(number_of_shares * current_price, 2)) AS "Value" from tbl_company, tbl_current_portfolio where tbl_company.stock_ticker= tbl_current_portfolio.stock_ticker;