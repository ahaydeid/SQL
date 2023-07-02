SELECT reviewer.rev_name
FROM reviewer
JOIN rating ON reviewer.rev_id = rating.rev_id
WHERE rating.rev_stars IS NULL;

