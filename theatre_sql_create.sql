CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    category VARCHAR(50),
    rating VARCHAR(50)
);

CREATE TABLE theatre(
    theatre_id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    theatre_id INTEGER NOT NULL,
    FOREIGN KEY(theatre_id) REFERENCES theatre(theatre_id) ON DELETE CASCADE
);

CREATE TABLE item(
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    price DECIMAL(3,2)
);

CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    item_id INTEGER NOT NULL,
    FOREIGN KEY(item_id) REFERENCES item(item_id) ON DELETE CASCADE
);