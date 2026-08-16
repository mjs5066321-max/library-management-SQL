# library-management-SQL
Library Management System using SQL. Includes relational tables (Books, Members, Borrow) with constraints, sample data insertion, and queries for overdue books, most borrowed titles, and member activity. Demonstrates database design, query optimization, and actionable insights.

**Library Management System — SQL Project**
A mini relational database project built to practice core SQL concepts: table design with primary/foreign keys, data insertion, joins, aggregation, and filtering.

🗂️** Database Schema**
LibraryBooks
**Column**	 **Type**
BookID  	    NUMBER (Primary Key)
Title	        VARCHAR
Author      	VARCHAR
Genre	        VARCHAR
Pages	        NUMBER

**LibraryMembers**

**Column   	Type**
MemberID   	 NUMBER (Primary Key)
Name         VARCHAR
JoinDate   	 DATE

**LibraryBorrow****
**Column	      Type**
BorrowID	    NUMBER (Primary Key)
BookID	      NUMBER (Foreign Key → LibraryBooks)
MemberID   	  NUMBER (Foreign Key → LibraryMembers)
BorrowDate  	DATE
ReturnDate  	DATE (NULL = currently borrowed)

**🔧Table Creation**
sql
CREATE TABLE LibraryBorrow (
    BorrowID NUMBER PRIMARY KEY,
    BookID NUMBER REFERENCES LibraryBooks(BookID),
    MemberID NUMBER REFERENCES LibraryMembers(MemberID),
    BorrowDate DATE,
    ReturnDate DATE
);

**📝 Sample Data**
3 books inserted: Atomic Habits, The Alchemist, Clean Code
3 members inserted
Multiple borrow records, including one member with more than one borrow, and books currently not yet returned

🔍 **Queries Practiced**
**1. Currently borrowed books (not yet returned)**
sql
SELECT b.Title, m.Name
FROM LibraryBorrow br
JOIN LibraryBooks b ON br.BookID = b.BookID
JOIN LibraryMembers m ON br.MemberID = m.MemberID
WHERE br.ReturnDate IS NULL;

**2. Most borrowed book titles**
sql
SELECT b.Title, COUNT(*) AS TimesBorrowed
FROM LibraryBorrow br
JOIN LibraryBooks b ON br.BookID = b.BookID
GROUP BY b.Title
ORDER BY TimesBorrowed DESC;

**3. Members who borrowed more than once**
sql
SELECT m.Name, COUNT(*) AS BooksBorrowed
FROM LibraryBorrow br
JOIN LibraryMembers m ON br.MemberID = m.MemberID
GROUP BY m.Name
HAVING COUNT(*) > 1;

💡 **Concepts Covered**
Primary Key & Foreign Key constraints
INNER JOIN across multiple related tables
Aggregate functions (COUNT)
GROUP BY and HAVING clauses
NULL handling for open/unresolved records
TO_DATE() for date formatting in Oracle SQL

🚀** About**
This project was built to strengthen SQL fundamentals commonly used in real-world data analysis — joins, aggregation, and filtering logic.

Author: Muskan Shaikh
