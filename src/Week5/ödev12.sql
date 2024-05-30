//ortalama film uzunluğundan büyük film sayıları döndürür.
SELECT count(*) FROM film
where length >
(
	select avg(length) from film

);

//En yüksek rental_rate değerine sahip film sayısı.
SELECT count(*) FROM film
where rental_rate =
(
	select MAX(rental_rate) from film

);

//en düşük replacement_cost ve rental_rate e sahip filmler.
SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

//müşterilerin alışveriş toplamları en fazla olan müşteriler.
SELECT customer_id, MAX(rental_id) AS max_rental_id
FROM payment
GROUP BY customer_id;