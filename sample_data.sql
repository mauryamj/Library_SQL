INSERT INTO members(name,email) VALUES ('ab','ab@gmail.com'),('mm','@gmail.com');
INSERT INTO books(book_id,title,isbn,genre,total_copies) VALUES (1,'the book i see','9780301616224','mystry',2),(2,'the book u see','9780222616224','adventure',5);
INSERT INTO authors(author_id,name) VALUES (1,'jorden'),(2,'james');
INSERT INTO book_author(book_id ,author_id) VALUES (1,1),(2,2);
INSERT INTO loans(member_id,book_id,due_date) VALUES (1,1,CURRENT_DATE + INTERVAL '14 days'),(2,2,CURRENT_DATE + INTERVAL '18 days';
INSERT INTO returns(loan_id,return_date,fine) VALUES (1,CURRENT_DATE + INTERVAL '16 days',30.00),(2,CURRENT_DATE + INTERVAL '12 days',27.00;