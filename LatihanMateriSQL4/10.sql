SELECT reviewer.rev_name, movie.mov_title
FROM reviewer
INNER JOIN rating ON reviewer.rev_id = rating.rev_id
INNER JOIN movie ON rating.mov_id = movie.mov_id
WHERE rating.rev_id IN (
    SELECT rev_id
    FROM rating
    GROUP BY rev_id
    HAVING COUNT(*) > 1
);
