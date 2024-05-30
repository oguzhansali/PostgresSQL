//actor ve customer tablolarında bulunan first_name verilerinin tümü.
(
SELECT first_name FROM actor
)
UNION
(
SELECT first_name FROM customer
);

//actor ve customer tablolarında bulunan first_name değeri için kesişen verilerin tümü.
(
SELECT first_name FROM actor
)
INTERSECT
(
SELECT first_name FROM customer
);

//actor tablosunda bulunan fakat customer tablosunda bulunmayan veriler.
(
SELECT first_name FROM actor
)
EXCEPT
(
SELECT first_name FROM customer
);

//İLK 3 SORGUYU TAKİP EDEN TÜM VERİLER.

(
SELECT first_name FROM actor
)
UNION ALL
(
SELECT first_name FROM customer
);
"-----------------------------------"
(
SELECT first_name FROM actor
)
INTERSECT ALL
(
SELECT first_name FROM customer
);
"------------------------------------"
(
SELECT first_name FROM actor
)
EXCEPT ALL
(
SELECT first_name FROM customer
);