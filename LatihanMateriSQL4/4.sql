SELECT movie.mov_title, movie.mov_year, movie.mov_dt_rel, director.dir_fname, director.dir_lname, (actor.act_fname || ' ' || actor.act_lname) As actor_fullname
FROM movie
INNER JOIN movie_direction ON movie.mov_id = movie_direction.mov_id
INNER JOIN movie_cast ON movie.mov_id = movie_cast.mov_id
LEFT JOIN rating ON movie.mov_id = rating.mov_id
LEFT JOIN reviewer ON rating.rev_id = reviewer.rev_id
INNER JOIN director ON movie_direction.dir_id = director.dir_id
INNER JOIN actor ON movie_cast.act_id = actor.act_id
WHERE reviewer.rev_name IS NULL;
