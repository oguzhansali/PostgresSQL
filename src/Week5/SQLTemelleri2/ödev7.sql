//rating değerine göre gruplama
SELECT title, rating FROM film
order by rating;

//replacement_cost  film sayısı 50 den büyük olanlar.
select replacement_cost,count(*) from film
group by replacement_cost
having count(*)>50;

//store_id değerine karşılık gelen müşteri sayısı.
SELECT store_id,count(*) FROM customer
group by store_id;

//En fazla şehir sayısını barındıran country_id bilgisi.
SELECT country_id, count(*) FROM city
group by country_id
order by count(*) desc
LIMIT 1;


