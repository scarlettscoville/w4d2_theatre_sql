INSERT INTO customer(
    first_name,
    last_name,
    email
) VALUES(
    'Link',
    'Nintendo',
    'link@nintendo.com'
), (
    'Zelda',
    'Nintendo',
    'zelda@nintendo.com'
), (
    'King',
    'Rhoam',
    'kingrhoam@nintendo.com'
), (
    'Revali',
    'Tabantha',
    'revalit@nintendo.com'
);

INSERT INTO movie(title, category, rating) VALUES
('Star Wars: Episode V', 'sci-fi', 'PG'),
('Jaws', 'thriller', 'PG'),
('The Batman', 'action', 'PG-13'),
('Spider-Man', 'action', 'PG-13');

INSERT INTO theatre(movie_id, theatre_num) VALUES
(1, '1'),
(1, '2'),
(2, '3'),
(3, '4'),
(3, '5'),
(3, '6'),
(3, '7'),
(4, '8');

INSERT INTO ticket(customer_id, movie_id, price) VALUES
(1, 1, 4.99),
(2, 1, 4.99),
(3, 3, 8.99),
(4, 4, 6.99);

INSERT INTO item(item_name, price) VALUES
('popcorn', 5.99),
('snickers', 1.49),
('skittles', 1.49),
('chips', 2.99),
('drink', 2.99),
('icee', 3.99);

INSERT INTO concession(customer_id, item_id) VALUES
(1, 5),
(1, 1),
(2, 4),
(3, 3);


