Select movie.mov_title, rating.rev_stars
From movie
Inner Join rating On movie.mov_id = rating.mov_id
Where rating.rev_stars =
(Select Max (rev_stars)
From rating)
Order By movie.mov_title