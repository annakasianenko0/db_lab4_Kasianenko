INSERT INTO author (author_id, name, birthday_date) 
VALUES (1, 'Adam Kay', DATE('02/06/1977'));

INSERT INTO author (author_id, name, birthday_date) 
VALUES (2, 'Daniel Kahneman', DATE('01/07/1970'));

INSERT INTO author (author_id, name, birthday_date) 
VALUES (3, 'Paul Kalanithi', DATE('08/09/1969'));

INSERT INTO author (author_id, name, birthday_date) 
VALUES (4, 'Russ Harris', DATE('03/10/1972'));

INSERT INTO author (author_id, name, birthday_date) 
VALUES (5, 'Oliver Sacks', DATE('09/12/1973'));



INSERT INTO format (format_id, name) 
VALUES (12, 'paperback');

INSERT INTO format (format_id, name) 
VALUES (13, 'pocket book');

INSERT INTO format (format_id, name) 
VALUES (14, 'audio book');

INSERT INTO format (format_id, name) 
VALUES (15, 'e book');

INSERT INTO format (format_id, name) 
VALUES (16, 'hard book');




INSERT INTO category (category_id, name) 
VALUES (1212, 'autobiography');

INSERT INTO category (category_id, name) 
VALUES (1213, 'fantasy');

INSERT INTO category (category_id, name) 
VALUES (1214, 'horror');

INSERT INTO category (category_id, name) 
VALUES (1215, 'historical');

INSERT INTO category (category_id, name) 
VALUES (1216, 'medical');




INSERT INTO book (book_id, name, isbn, rating, format_id, category_id) 
VALUES (1161, 'This is Going to Hurt', '9781509858637', 4, 12, 1212);

INSERT INTO book (book_id, name, isbn, rating, format_id, category_id) 
VALUES (1162, 'Thinking, Fast and Slow', '9780141033570', 3, 13, 1213);

INSERT INTO book (book_id, name, isbn, rating, format_id, category_id) 
VALUES (1163, 'When Breath Becomes Air', '9781784701994', 5, 14, 1214);

INSERT INTO book (book_id, name, isbn, rating, format_id, category_id) 
VALUES (1164, 'The Happiness Trap', '9781845298258', 3, 15, 1215);

INSERT INTO book (book_id, name, isbn, rating, format_id, category_id) 
VALUES (1165, 'The Clever Guts Diet', '9781780723044', 4, 16, 1216);


INSERT INTO book_author (book_id, author_id) 
VALUES (1161, 1);

INSERT INTO book_author (book_id, author_id) 
VALUES (1162, 2);

INSERT INTO book_author (book_id, author_id) 
VALUES (1163, 3);

INSERT INTO book_author (book_id, author_id) 
VALUES (1164, 4);

INSERT INTO book_author (book_id, author_id) 
VALUES (1165, 5);