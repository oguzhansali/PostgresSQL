//rental_rate  sütunundaki
select AVG(rental_rate) FROM film;

// film isimlerinin kaç tanesi C ile bşalar.
select Count(title) FROM film
where title LIKE 'C%';

//0.99 rental_rate e sahip en uzun length.
select Max(length) from film
where rental_rate=0.99;

//uznluğu 150 den buyuk olan kaç farklı replacement_cost değeri vardır.
select COUNT(DISTINCT(replacement_cost)) from film
where length >150;