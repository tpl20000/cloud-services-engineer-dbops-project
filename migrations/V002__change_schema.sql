DROP TABLE IF EXISTS orders_date;
DROP TABLE IF EXISTS product_info;

ALTER TABLE orders
ADD COLUMN IF NOT EXISTS date_created date DEFAULT current_date;
ALTER TABLE order_product
ADD FOREIGN KEY (order_id) REFERENCES orders(id);

ALTER TABLE product
ADD COLUMN IF NOT EXISTS price double precision;
ALTER TABLE order_product
ADD FOREIGN KEY (product_id) REFERENCES product(id);