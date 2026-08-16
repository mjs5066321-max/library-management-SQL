-- Insert Books
INSERT INTO LibraryBooks VALUES (101, 'Atomic Habits', 'James Clear', 'Self-help', 450);
INSERT INTO LibraryBooks VALUES (102, 'The Alchemist', 'Paulo Coelho', 'Fiction', 300);
INSERT INTO LibraryBooks VALUES (103, 'Clean Code', 'Robert Martin', 'Programming', 700);

-- Insert Members
INSERT INTO LibraryMembers VALUES (1, 'Muskan Shaikh', TO_DATE('2026-08-01','YYYY-MM-DD'));
INSERT INTO LibraryMembers VALUES (2, 'Amit Verma', TO_DATE('2026-07-15','YYYY-MM-DD'));
INSERT INTO LibraryMembers VALUES (3, 'Sara Khan', TO_DATE('2026-06-20','YYYY-MM-DD'));

-- Insert Borrow Records
INSERT INTO LibraryBorrow VALUES (201, 101, 1, TO_DATE('2026-08-02','YYYY-MM-DD'), NULL);
INSERT INTO LibraryBorrow VALUES (202, 102, 2, TO_DATE('2026-07-16','YYYY-MM-DD'), TO_DATE('2026-07-25','YYYY-MM-DD'));
INSERT INTO LibraryBorrow VALUES (203, 103, 3, TO_DATE('2026-07-21','YYYY-MM-DD'), NULL);
