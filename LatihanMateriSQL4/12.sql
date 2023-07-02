SELECT reviewer.rev_name
FROM reviewer
JOIN rating ON reviewer.rev_id = rating.rev_id
JOIN movie ON rating.mov_id = movie.mov_id
WHERE movie.mov_title = 'American Beauty';
