-- Запит 1
--select b.name as "Book name", a.name as "Author name", a.birthday_date  from book b
--inner join book_author ba on b.book_id = ba.book_id
--inner join author a on a.author_id = ba.author_id
--where a.birthday_date > date('12/31/1972')

--Запит 2
--select a.name, b.rating from book b
--inner join book_author ba on b.book_id = ba.book_id
--inner join author a on a.author_id = ba.author_id
--where b.rating = (select max(rating) from book)

--Запит  3
--select b.name from book b
--inner join category c on b.category_id  = c.category_id
--where c.name  <> 'horror'