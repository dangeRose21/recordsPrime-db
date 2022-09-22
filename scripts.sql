INSERT INTO artists (name)
VALUES ('Subtronics');

INSERT INTO artists (name)
VALUES ('Avicii'), ('William Black'), ('Zomboy');

SELECT * FROM artists;

SELECT * FROM artists LIMIT 2;

SELECT name FROM artists;

SELECT id AS 'ID', name as 'Artist Name'
FROM artists;

SELECT * FROM artists ORDER BY name;

SELECT * FROM artists ORDER BY name DESC;

SELECT * FROM artists ORDER BY name ASC;

INSERT INTO  albums (name, year, artist_id)
VALUES ('FRACTALS', 2022, 1),
		('Pieces', 2021, 3), 
        ('Pages', 2019, 3),
        ('TIM', 2019, 2),
        ('The Outbreak', 2014, 4),
        ('Stories', 2015, 2),
        ('TEST', NULL, 4);
        
SELECT * FROM albums;

SELECT name FROM albums;

SELECT DISTINCT name FROM albums;
        
UPDATE albums 
SET name = ('Rott N Roll Pt. 1: Remix') WHERE id = 7;

SELECT * FROM albums 
WHERE year < 2020;

SELECT * FROM albums
WHERE name LIKE '%ag%';

SELECT * FROM albums
WHERE name LIKE '%ag%' OR artist_id = 2;

SELECT * FROM albums
WHERE artist_id = 3; 

SELECT * FROM albums
WHERE year = 2021 AND artist_id = 3; 

SELECT * FROM albums
WHERE year BETWEEN 2000 AND 2018;

SELECT * FROM albums 
WHERE year IS NULL;

DELETE FROM albums WHERE id = 7;

SELECT * FROM albums;

INSERT INTO artists (name)
VALUES ('Level Up');

SELECT * FROM artists
JOIN albums ON artists.id = albums.artist_id;

SELECT * FROM artists
INNER JOIN albums ON artists.id = albums.artist_id;

SELECT * FROM artists
LEFT JOIN albums ON artists.id = albums.artist_id;

SELECT * FROM artists
RIGHT JOIN albums ON artists.id = albums.artist_id;

SELECT * FROM albums
RIGHT JOIN artists ON artists.id = albums.artist_id;

SELECT * FROM albums
LEFT JOIN artists ON artists.id = albums.artist_id;


SELECT AVG(year) FROM albums;

SELECT SUM(year) FROM albums;

SELECT artist_id, COUNT(artist_id) FROM albums
GROUP BY artist_id;

SELECT a.name AS artist_name, COUNT(al.id) AS num_albums
FROM artists AS a
JOIN albums AS al ON a.id = al.artist_id
GROUP BY a.id;

SELECT a.name AS artist_name, COUNT(al.id) AS num_albums
FROM artists AS a
LEFT JOIN albums AS al ON a.id = al.artist_id
GROUP BY a.id;

SELECT a.name AS artist_name, COUNT(al.id) AS num_albums
FROM artists AS a
LEFT JOIN albums AS al ON a.id = al.artist_id
GROUP BY a.id
HAVING num_albums = 1;

SELECT a.name AS artist_name, COUNT(al.id) AS num_albums
FROM artists AS a
LEFT JOIN albums AS al ON a.id = al.artist_id
WHERE a.name = 'Subtronics'
GROUP BY a.id
HAVING num_albums = 1;


