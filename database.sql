DROP DATABASE IF EXISTS cafe;
CREATE DATABASE cafe CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use cafe;

CREATE TABLE `managertable` (
    id int AUTO_INCREMENT,
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    username varchar(255),
    password varchar(255),
    name varchar(255),
    age int,
    phone varchar(255),
    datejoined date DEFAULT CURRENT_DATE,
    salary int,
    PRIMARY KEY (id)
);

CREATE TABLE `stafftable` (
    id int AUTO_INCREMENT,
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    username varchar(255),
    password varchar(255),
    name varchar(255),
    age int,
    phone varchar(255),
    datejoined date DEFAULT CURRENT_DATE,
    salary int,
    PRIMARY KEY (id)
);

CREATE TABLE `customertable` (
    id int AUTO_INCREMENT,
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    username varchar(255),
    password varchar(255),
    status varchar(255) default 'pending',
    name varchar(255),
    studentid varchar(255),
    age int,
    phone varchar(255),
    datejoined date DEFAULT CURRENT_DATE,
    PRIMARY KEY (id)
);

CREATE TABLE `booking` (
    id int AUTO_INCREMENT,
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customerid int,
    staffid int,
    rating int,
    comment text,
    price float,
    status varchar(100) default 'New',
    datebooking date DEFAULT CURRENT_DATE,
    foodcategory varchar(200) default 'others',
    foodname varchar(200) default '',
    quantity int default 1,
    PRIMARY KEY (id)
);

INSERT INTO managertable (username, password, name, age, phone, salary) VALUES ('manager', '12345', 'Manager', 55, '01232321232', 9999);

INSERT INTO stafftable (username, password, name, age, phone, salary) VALUES ('staff1', '12345', 'Staff 1', 21 , '01012232453', 3200);
INSERT INTO stafftable (username, password, name, age, phone, salary) VALUES ('staff2', '12345', 'Staff 2', 21 , '01012223453', 3400);
INSERT INTO stafftable (username, password, name, age, phone, salary) VALUES ('staff3', '12345', 'Staff 3', 25 , '01212121213', 4600);
INSERT INTO stafftable (username, password, name, age, phone, salary) VALUES ('staff4', '12345', 'Staff 4', 26 , '01212232663', 3500);
INSERT INTO stafftable (username, password, name, age, phone, salary) VALUES ('staff5', '12345', 'Staff 5', 32 , '01032232453', 4800);

INSERT INTO customertable (username, password, name, studentid, age, phone, status) VALUES ('customer1', '12345', 'Customer 1', 'TP682359', 26 , '01211233678', 'approved');
INSERT INTO customertable (username, password, name, studentid, age, phone, status) VALUES ('customer2', '12345', 'Customer 2', 'TP682359', 39 , '01212345338', 'approved');
INSERT INTO customertable (username, password, name, studentid, age, phone, status) VALUES ('customer3', '12345', 'Customer 3', 'TP054698', 22 , '01211235678', 'approved');
INSERT INTO customertable (username, password, name, studentid, age, phone, status) VALUES ('customer4', '12345', 'Customer 4', 'TP842976', 21 , '01233345678', 'approved');
INSERT INTO customertable (username, password, name, studentid, age, phone) VALUES ('customer5', '12345', 'Customer 5', 'TP015687', 40 , '01212345678');
INSERT INTO customertable (username, password, name, studentid, age, phone) VALUES ('customer6', '12345', 'Customer 6', 'TP524960', 24 , '01212342378');

INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status, rating, comment) VALUES (1, 1, 188, 'Western Food' ,'Steak', 'Done', '10', 'Very nice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status, rating, comment) VALUES (1, 1, 188, 'Western Food' ,'Steak', 'Done', '2', 'Very bad');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status) VALUES (1, 5, 188, 'Western Food' ,'Steak', 'On Going');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status, rating, comment) VALUES (2, 3, 188, 'Western Food' ,'Steak', 'Done', '6', 'Normal steak');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status) VALUES (1, 2, 65, 'Japan food', 'Sushi', 'On Going');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status, rating, comment) VALUES (4, 4, 65, 'Japan food', 'Sushi', 'Done', '8', 'Tasty!!!!');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status) VALUES (3, 4, 65, 'Japan food', 'Sushi', 'On Going');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status, rating, comment) VALUES (4, 4, 65, 'Japan food', 'Sushi', 'Done', '1', 'Cannot eat');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (4, 1, 25, 'Local food', 'Nasi Lemak');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname, status, rating, comment) VALUES (3, 1, 25, 'Local food', 'Nasi Lemak', 'Done', '10', 'Very nice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (2, 3, 25, 'Local food', 'Nasi Lemak');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (2, 4, 25, 'Local food', 'Nasi Lemak');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (3, 5, 25, 'Local food', 'Nasi Lemak');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (2, 1, 15, 'Drinks', 'Apple Juice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (4, 1, 15, 'Drinks', 'Apple Juice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (3, 2, 15, 'Drinks', 'Apple Juice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (3, 1, 15, 'Drinks', 'Apple Juice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (2, 4, 15, 'Drinks', 'Apple Juice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (2, 5, 15, 'Drinks', 'Apple Juice');
INSERT INTO booking (customerid, staffid, price, foodcategory, foodname) VALUES (2, 4, 15, 'Drinks', 'Apple Juice');