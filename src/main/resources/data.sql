
-- SALESPEOPLE
INSERT INTO SALESPEOPLE (FIRST_NAME, LAST_NAME, EMAIL, PHONE, CITY, STATE, ZIP_CODE, SALARY)
VALUES
('Amit', 'Sharma', 'amit.sharma@test.com', '9991112222', 'Pune', 'MH', '411001', 15000),
('Neha', 'Verma', 'neha.verma@test.com', '9993334444', 'Mumbai', 'MH', '400001', 18000);

-- PRODUCTS
INSERT INTO PRODUCTS (PRODUCT_ID, NAME, SIZE, VARIETY, PRICE, STOCK_QUANTITY, STATUS)
VALUES
('P001', 'Apple', 1, 'Fruit', 2.50, 100, 'AVAILABLE'),
('P002', 'Milk', 1, 'Dairy', 1.75, 50, 'AVAILABLE'),
('P003', 'Bread', 2, 'Bakery', 3.20, 30, 'OUT_OF_STOCK');

-- CUSTOMERS
INSERT INTO CUSTOMERS (FIRST_NAME, LAST_NAME, EMAIL, PHONE, CITY, STATE, ZIP_CODE)
VALUES
('Runay', 'Dhaygude', 'runay.dhaygude@test.com', '8881112222', 'Pune', 'MH', '411002'),
('Ramdas', 'Dhaygude', 'ramdas.d@test.com', '8883334444', 'Nashik', 'MH', '422001');

-- ORDERS
INSERT INTO ORDERS (ORDER_ID, CUSTOMER_ID, SALESPERSON_ID)
VALUES
('ORD1001', 1, 1),
('ORD1002', 2, 2);
