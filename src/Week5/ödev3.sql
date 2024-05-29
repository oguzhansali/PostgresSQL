SELECT * FROM country
where country LIKE 'A%a';

SELECT * FROM country
where country LIKE '_____n';

SELECT * FROM film
where title ILIKE '%t%' order by title LIMIT 4;

SELECT * FROM film
where title LIKE 'C%' and length>90 and rental_rate=2.99;
