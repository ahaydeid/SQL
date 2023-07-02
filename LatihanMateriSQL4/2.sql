SELECT director.dir_fname, director.dir_lname
FROM director
WHERE director.dir_id IN (
    SELECT movie_direction.dir_id
    FROM movie_direction
    JOIN movie_cast ON movie_direction.mov_id = movie_cast.mov_id
    JOIN movie ON movie_cast.mov_id = movie.mov_id
    WHERE movie.mov_title = 'Eyes Wide Shut'
);
