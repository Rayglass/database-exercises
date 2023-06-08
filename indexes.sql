USE employees;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;




USE cerberus_raymond;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT unsigned NOT NUll AUTO_INCREMENT,
                        artist_name VARCHAR(100),
                        record_name VARCHAR(100),
                        release_date INT(4),
                        genre VARCHAR(150),
                        sales FLOAT(10),
                        PRIMARY KEY (id),
                        UNIQUE (artist_name, record_name)
);