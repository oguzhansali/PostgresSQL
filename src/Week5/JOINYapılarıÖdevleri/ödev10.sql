//LEFT JOIN kullanılarak country table deki verilerle uyuşan city verileri birleştirildi.
SELECT city.city,country.country from country
LEFT JOIN city ON city.city_id=country.country_id;

//payment_id, first_name, last_name ın aynı tabloda çıktı olarak verilmesi.
SELECT payment.payment_id,customer.first_name,customer.last_name FROM payment
RIGHT JOIN customer ON customer.customer_id=payment.customer_id;


//rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusu.
SELECT rental.rental_id,customer.first_name,customer.last_name FROM customer
FULL JOIN rental ON rental.customer_id=customer.customer_id;
