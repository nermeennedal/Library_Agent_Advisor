

--Domain Tables 

-- books table
CREATE TABLE books(
isbn TEXT PRIMARY KEY ,
title TEXT  NOT NULL,
author TEXT NOT NULL ,
quantity INT DEFAULT 0,
price REAL DEFAULT 0 
); -- books info 



-- Customers table 
CREATE TABLE customers(
id INTEGER PRIMARY KEY AUTOINCREMENT,
email TEXT NOT NULL,
name TEXT NOT NULL
);


--orders 

CREATE TABLE orders (
id INTEGER PRIMARY KEY AUTOINCREMENT,
customer_id INT NOT NULL ,
status TEXT DEFAULT 'pending',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

--order items
CREATE TABLE order_items (
    order_id INT NOT NULL,
    isbn TEXT NOT NULL,
    quantity INT NOT NULL ,
    PRIMARY KEY (order_id,isbn) -- two columns primary key 
);


--Chat storge 
CREATE TABLE messages (
id INTEGER PRIMARY KEY  AUTOINCREMENT,
session_id INT NOT NULL,
role TEXT NOT NULL,
content TEXT NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tool_calls(
id INTEGER PRIMARY KEY AUTOINCREMENT,
session_id INT NOT NULL,
name TEXT NOT NULL,
args_json TEXT NOT NULL,
result_json TEXT NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);





