-- Insert initial authors
INSERT INTO Authors (name) VALUES 
('George Orwell'),
('J.K. Rowling');

-- Insert initial books
INSERT INTO Books (title, isbn, author_id, published_year, genre) VALUES 
('1984', '1234567890', 1, 1949, 'Dystopian'),
('Harry Potter and the Philosopher\'s Stone', '1234567891', 2, 1997, 'Fantasy');

-- Insert members
INSERT INTO Members (name, email) VALUES 
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com');

-- Borrowing records
INSERT INTO Borrowings (member_id, book_id, borrow_date) VALUES 
(1, 1, '2025-06-01'),
(2, 2, '2025-06-03');
