-- 1. Currently borrowed books (not yet returned)
SELECT b.Title, m.Name
FROM LibraryBorrow br
JOIN LibraryBooks b ON br.BookID = b.BookID
JOIN LibraryMembers m ON br.MemberID = m.MemberID
WHERE br.ReturnDate IS NULL;

-- 2. Most borrowed book titles
SELECT b.Title, COUNT(*) AS TimesBorrowed
FROM LibraryBorrow br
JOIN LibraryBooks b ON br.BookID = b.BookID
GROUP BY b.Title
ORDER BY TimesBorrowed DESC;

-- 3. Members who borrowed more than once
SELECT m.Name, COUNT(*) AS BooksBorrowed
FROM LibraryBorrow br
JOIN LibraryMembers m ON br.MemberID = m.MemberID
GROUP BY m.Name
HAVING COUNT(*) > 1;
