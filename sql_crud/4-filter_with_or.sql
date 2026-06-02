SELECT title, genre
FROM books
WHERE genre = 'Fantasy' OR price < 10
ORDER BY id;