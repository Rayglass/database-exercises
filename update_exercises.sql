USE codeup_test_db;


-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
SELECT record_name AS 'All Record Names' FROM albums;
-- UPDATE statement - Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = sales * 10 WHERE sales;
-- Select Statement to View Update
SELECT artist_name, record_name, sales FROM albums;

-- All albums released before 1980
SELECT record_name AS 'Albums released before 1980' FROM albums WHERE release_date < 1980;
-- UPDATE statement - Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = 1800 WHERE release_date < 1980;
-- Select Statement to View Update
SELECT artist_name, record_name, release_date FROM albums;

-- All albums by Michael Jackson
SELECT record_name AS 'Albums by Michael Jackson' FROM albums WHERE artist_name = 'Michael Jackson';
-- UPDATE statement - Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
-- Select Statement to View Update
SELECT artist_name, record_name FROM albums WHERE artist_name = 'Peter Jackson';



