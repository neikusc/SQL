CREATE TABLE user (
   UserID integer,
   Gender varchar,
   Age integer,
   Occupation integer,
   Zipcode integer
);

CREATE TABLE rating (
  UserID integer,
  MovieID integer,
  Rating integer,
  Timestamp integer
); 

CREATE TABLE movie (
  MovieID integer,
  Title varchar,
  Genres varchar
);

LOAD DATA LOCAL INFILE '/home/neik/DataScience/MovieLens/users.dat' INTO TABLE user
   FIELDS TERMINATED BY '::'
   LINES TERMINATED BY '\n' 
   (UserID, Gender, Age, Occupation, Zipcode);

LOAD DATA LOCAL INFILE '/home/neik/DataScience/MovieLens/ratings.dat' INTO TABLE rating
   FIELDS TERMINATED BY '::'
   LINES TERMINATED BY '\n' 
   (UserID, MovieID, Rating, Timestamp);

LOAD DATA LOCAL INFILE '/home/neik/DataScience/MovieLens/movies.dat' INTO TABLE movie
   FIELDS TERMINATED BY '::'
   LINES TERMINATED BY '\n' 
   (MovieID, Title, Genres);

SELECT * INTO OUTFILE '/tmp/movies.csv'
  FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  FROM movie;

