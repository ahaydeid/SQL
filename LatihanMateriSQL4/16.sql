SELECT mov_title
FROM movie
INNER JOIN movie_cast ON movie.mov_id = movie_cast.mov_id
WHERE movie_cast.act_id IN (
    SELECT act_id
    FROM movie_cast
    GROUP BY act_id
    HAVING COUNT(*) > 1
);
