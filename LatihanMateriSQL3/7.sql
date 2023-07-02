SELECT mov_title
FROM movie
LEFT JOIN rating ON movie.mov_id = rating.mov_id
WHERE rating.mov_id IS NULL;
