CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    author_id INT REFERENCES Authors(author_id),
    published_year INT,
    genre VARCHAR(100)
);

CREATE TABLE Members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Borrowings (
    borrowing_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES Members(member_id),
    book_id INT REFERENCES Books(book_id),
    borrow_date DATE NOT NULL,
    return_date DATE
);
