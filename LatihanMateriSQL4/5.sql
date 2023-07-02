SELECT movie.mov_title
FROM movie
JOIN movie_direction ON movie.mov_id = movie_direction.mov_id
JOIN director ON movie_direction.dir_id = director.dir_id
WHERE director.dir_fname = 'Woody' AND director.dir_lname = 'Allen';
