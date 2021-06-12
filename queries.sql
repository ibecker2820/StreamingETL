-- Joins Netflix to IMDb
SELECT netflix.title, netflix.rating, imdb.vote_average, imdb.budget, imdb.revenue
FROM netflix
JOIN imdb
ON netflix.title = imdb.title
WHERE (imdb.vote_average = 3);

-- Joins HBO to IMDb
SELECT hbo.title, hbo.rating, imdb.vote_average, imdb.budget, imdb.revenue
FROM hbo
JOIN imdb
ON hbo.title = imdb.title
WHERE (imdb.vote_average = 9);

-- Joins Amazon to IMDb
SELECT amazon.title, amazon.rating, imdb.vote_average, imdb.budget, imdb.revenue
FROM amazon
JOIN imdb
ON amazon.title = imdb.title
WHERE (imdb.vote_average >7)
ORDER BY imdb.vote_average DESC;

-- Joins Disney to IMDb
SELECT disney.title, disney.rating, imdb.vote_average, imdb.budget, imdb.revenue
FROM disney
JOIN imdb
ON disney.title = imdb.title
WHERE disney.rating NOT like 'TV%'
AND (imdb.vote_average = 7)
ORDER BY imdb.vote_average DESC;

