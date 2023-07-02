SELECT actor.act_id, actor.act_fname, actor.act_lname, actor.act_gender, movie_cast.role, movie.mov_title
FROM actor
JOIN movie_cast ON actor.act_id = movie_cast.act_id
JOIN movie ON movie_cast.mov_id = movie.mov_id
WHERE movie.mov_title = 'Annie Hall';
