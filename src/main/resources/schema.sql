-- 各種テーブル削除
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS order_details;
 	 
-- カテゴリーテーブル
CREATE TABLE categories
(
 	id SERIAL PRIMARY KEY,
 	name TEXT
);
-- 商品テーブル
CREATE TABLE items
(
 	id SERIAL PRIMARY KEY,
 	category_id INTEGER,
 	name TEXT,
 	price INTEGER
);
-- 顧客テーブル
CREATE TABLE customers
(
 	id SERIAL PRIMARY KEY,
 	name TEXT,
 	address TEXT,
 	tel TEXT,
 	email TEXT
);
-- 注文テーブル
CREATE TABLE orders
(
 	id SERIAL PRIMARY KEY,
 	customer_id INTEGER,
 	ordered_on DATE,
 	total_price INTEGER
 );
-- 注文明細テーブル
CREATE TABLE order_details
(
 	id SERIAL PRIMARY KEY,
 	order_id INTEGER,
 	item_id INTEGER,
 	quantity INTEGER
);
