SELECT DISTINCT movie.mov_year
FROM movie
JOIN rating ON movie.mov_id = rating.mov_id
WHERE rating.rev_stars > 3
ORDER BY movie.mov_year ASC;
