SELECT reviewer.rev_name, movie.mov_title, rating.rev_stars
FROM reviewer
JOIN rating ON reviewer.rev_id = rating.rev_id
JOIN movie ON rating.mov_id = movie.mov_id
WHERE rating.rev_stars = (
    SELECT MIN(rev_stars)
    FROM rating
);
