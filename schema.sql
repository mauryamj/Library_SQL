CREATE TABLE members(member_id SERIAL PRIMARY KEY,name varchar(100) NOT NULL,email varchar(100) UNIQUE NOT NULL,join_date date DEFAULT CURRENT_DATE);
CREATE TABLE books(book_id SERIAL PRIMARY KEY,title varchar(100) NOT NULL,isbn varchar(100) UNIQUE ,genre varchar(20),total_copies INT CHECK(total_copies >=0));
CREATE TABLE loans(loan_id SERIAL PRIMARY KEY,member_id INT REFERENCES members(member_id) ,book_id INT REFERENCES books(book_id),loan_date DATE DEFAULT CURRENT_DATE ,due_date DATE);
CREATE TABLE returns(return_id SERIAL PRIMARY KEY,loan_id INT REFERENCES loans(loan_id),return_date DATE DEFAULT CURRENT_DATE,fine NUMERIC(6,2) DEFAULT 0.00);
CREATE TABLE authors(author_id SERIAL PRIMARY KEY, name varchar(100));
CREATE TABLE book_author(book_id INT REFERENCES bookS(book_id) on DELETE CASCADE,author_id INT REFERENCES authors(author_id) on DELETE CASCADE,PRIMARY KEY (book_id, author_id));