-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)
SELECT
  first_name,
  last_name
FROM
  Favorites
  JOIN Users ON Favorites.user_id = users.id
  JOIN Dogs ON Favorites.dog_id = dogs.id
WHERE
  dogs.name = 'Zoey';