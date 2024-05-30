//city ve country tablolarındaki verileri birleştirir.
SELECT city,country,city_id from country
INNER JOIN city ON city.city_id=country.country_id;


//customer ve payment tabloları birleştirir.
SELECT customer.store_id,customer.first_name,customer.last_name,customer.email,customer.active AS activebool,payment.staff_id,payment.rental_id,payment.amount,payment.payment_date from payment
INNER JOIN customer ON payment.customer_id=customer.customer_id;


//customer ve rental tabloları birleştirildi.
SELECT customer.store_id,customer.first_name,customer.last_name,customer.email,customer.address_id,customer.active As activebool,customer.create_date,rental.rental_id,rental.rental_date,rental.inventory_id,rental.return_date,rental.staff_id,rental.last_update  FROM rental
INNER JOIN customer ON rental.customer_id= rental.customer_id;


