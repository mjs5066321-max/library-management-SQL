-- Table: LibraryBooks
CREATE TABLE LibraryBooks (
    BookID NUMBER PRIMARY KEY,
    Title VARCHAR2(100),
    Author VARCHAR2(100),
    Genre VARCHAR2(50),
    Pages NUMBER
);

-- Table: LibraryMembers
CREATE TABLE LibraryMembers (
    MemberID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    JoinDate DATE
);

-- Table: LibraryBorrow
CREATE TABLE LibraryBorrow (
    BorrowID NUMBER PRIMARY KEY,
    BookID NUMBER REFERENCES LibraryBooks(BookID),
    MemberID NUMBER REFERENCES LibraryMembers(MemberID),
    BorrowDate DATE,
    ReturnDate DATE
);
