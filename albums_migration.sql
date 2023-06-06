USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT unsigned NOT NUll AUTO_INCREMENT,
                        artist_name VARCHAR(100),
                        record_name VARCHAR(100),
                        release_date INT(4),
                        sales FLOAT(10),
                        genre VARCHAR(50),
                        PRIMARY KEY (id)
);