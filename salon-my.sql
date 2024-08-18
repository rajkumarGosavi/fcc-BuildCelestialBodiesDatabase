CREATE DATABASE salon;
-- \c salon;

CREATE TABLE customers(
  customer_id SERIAL PRIMARY KEY,
  phone varchar UNIQUE,
  name TEXT
);

CREATE TABLE appointments(
  appointment_id SERIAL PRIMARY KEY,
  customer_id INT,
  service_id INT,
  "time" varchar,
  CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  CONSTRAINT fk_service FOREIGN KEY (service_id) REFERENCES services(service_id)
);

CREATE TABLE services(
  service_id SERIAL PRIMARY KEY,
  name TEXT
);

INSERT INTO services(service_id,name) 
VALUES
(1, 'service1'),
(2, 'service2'),
(3, 'service3');