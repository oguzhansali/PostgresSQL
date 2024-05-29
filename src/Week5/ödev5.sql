//n ile biten en uzun length e sahip 5 film.
SELECT * FROM film
where title LIKE '%n'
order by length desc
LIMIT 5;


//n  ile biten ikinci 5li en kısa film süresine sahip filmler.
SELECT * FROM film
where title LIKE '%n'
order by length
OFFSET 5
LIMIT 5;


//last_name e göre azalan olacak şekilde soter_id 1 olan 4 veri.
SELECT * FROM customer
where store_id=1
order by last_name desc
LIMIT 4;
