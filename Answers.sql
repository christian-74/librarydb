## CREATE TABLES STATEMENTS
CREATE TABLE books(
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR (50),
author VARCHAR (50),
genre VARCHAR (50)
);

CREATE TABLE borrowers(
borrower_id INT PRIMARY KEY AUTO_INCREMENT,
borrower_name VARCHAR (50),
book_id INT,
FOREIGN KEY(book_id) REFERENCES books(book_id)
);

CREATE TABLE borrowings (
  borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
  borrower_id INT NOT NULL,
  book_id INT NOT NULL,
  borrow_date DATE NOT NULL,
  return_date DATE,
  status VARCHAR(20) DEFAULT 'borrowed',
  FOREIGN KEY (borrower_id) REFERENCES borrowers(borrower_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id)
);

## INSERT DATA STATEMENTS
INSERT INTO books (title, author, genre) VALUES
('To Kill a Mockingbird', 'Harper Lee', 'Fiction'),
('1984', 'George Orwell', 'Dystopian'),
('A Brief History of Time', 'Stephen Hawking', 'Science'),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic'),
('Think and Grow Rich', 'Napoleon Hill', 'Self-help');

INSERT INTO borrowers (borrower_name, book_id) VALUES
('Alice Johnson', 1),
('Brian Kimani', 2),
('Cynthia Wangari', 3),
('David Otieno', 4),
('Emily Njeri', 5);

INSERT INTO borrowings (borrower_id, book_id, borrow_date, return_date, status) VALUES
(1, 1, '2024-05-01', '2024-05-10', 'returned'),
(2, 2, '2024-05-03', NULL, 'borrowed'),
(3, 3, '2024-05-05', '2024-05-12', 'returned'),
(4, 4, '2024-05-07', NULL, 'borrowed'),
(5, 5, '2024-05-09', NULL, 'borrowed');