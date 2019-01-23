CREATE TABLE PERSON (
  id SERIAL, 
  name varchar(255), 
  age integer, 
  height_cm integer, 
  city varchar(255), 
  favorite_color varchar(255)
);



INSERT INTO person(name, favorite_color, city, height_cm, age)
VALUES
 ('Harry', 'green', 'Denton', 173, 24);
INSERT INTO person(name, favorite_color, city, height_cm, age)
VALUES
 ('Leslie', 'yellow', 'Denton', 149, 24);
 INSERT INTO person(name, favorite_color, city, height_cm, age)
VALUES
 ('Ryan', 'blue', 'Lynchburg', 172, 25);
 INSERT INTO person(name, favorite_color, city, height_cm, age)
VALUES
 ('Benji', 'brown', 'Denton', 51, 2);
 INSERT INTO person(name, favorite_color, city, height_cm, age)
VALUES
 ('Dakota', 'yellow', 'Denton', 26, 6);



SELECT * FROM person ORDER BY height_cm DESC


SELECT * FROM person ORDER BY height_cm ASC


SELECT * FROM person ORDER BY age DESC


SELECT * FROM person WHERE age>20


SELECT * FROM person WHERE age=18


SELECT * FROM person WHERE age<20 OR age>30


SELECT * FROM person WHERE age!=27


SELECT * FROM person WHERE favorite_color != 'red'


SELECT * FROM person WHERE favorite_color NOT IN ('red', 'blue')


SELECT * FROM person WHERE favorite_color IN ('orange', 'green')


SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue')


SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple')


CREATE TABLE orders (
  person_id integer, 
  product_name varchar(255), 
  product_price integer, 
  quantity integer
);


INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES
 (1, 'steak', 5, 2);
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES
 (1, 'potato', 3, 4);
 INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES
 (1, 'beer', 2, 2);
 INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES
 (2, 'salad', 4, 1);
 INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES
 (2, 'soup', 3, 1);


SELECT * FROM orders


SELECT SUM(quantity) FROM orders


SELECT SUM(product_price * quantity) FROM orders


SELECT DISTINCT SUM(product_price * quantity) FROM orders WHERE person_id = 1;


INSERT INTO artist(name)
VALUES
 ('Nickel Creek');
INSERT INTO artist(name)
VALUES
 ('Within The Ruins');
 INSERT INTO artist(name)
VALUES
 ('Cecilia Bartoli');


 select * from artist order by name desc LIMIT 10


select * from artist order by name LIMIT 5


select * from artist WHERE name ILIKE 'Black%'


select * from artist WHERE name ILIKE '%Black%'



SELECT first_name, last_name FROM employee WHERE city ILIKE 'Calgary'


SELECT * FROM employee order by birth_date DESC LIMIT 1 


SELECT * FROM employee order by birth_date ASC LIMIT 1 


SELECT * FROM employee WHERE first_name ILIKE 'NANCY'
SELECT * FROM employee WHERE reports_to = 2;


SELECT count(*) FROM employee WHERE city ILIKE 'Lethbridge'


SELECT count(*) FROM invoice WHERE billing_country ILIKE 'USA'


SELECT total FROM invoice ORDER BY total DESC LIMIT 1

SELECT total FROM invoice ORDER BY total ASC LIMIT 1

SELECT * FROM invoice WHERE total > 5

SELECT COUNT(*) FROM invoice WHERE total < 5

SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ')

SELECT AVG(total) FROM invoice 

SELECT SUM(total) FROM invoice 