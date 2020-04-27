/* SQL query to extract avg. temp. by year in the city of 'Milan' - dropping rows with NULL avg. temp.*/
SELECT  cl.city AS city, 
	cl.country AS country, 
	cd.year AS year, 
	cd.avg_temp AS avg_city_temp
FROM city_list AS cl
JOIN city_data AS cd
	ON cd.city = cl.city
WHERE cl.city LIKE 'Milan' AND cd.avg_temp IS NOT NULL;


/* SQL query to extract avg. temp. by year around the globe - dropping rows with NULL avg. temp. in 'Milan'*/
SELECT 	cl.city AS city,
	cl.country AS country,
       	cd.year AS year,
        gd.avg_temp AS avg_global_temp
FROM city_list AS cl
JOIN city_data AS cd
	ON cd.city = cl.city
JOIN global_data AS gd
	ON gd.year = cd.year
WHERE cl.city LIKE 'Milan' AND cd.avg_temp IS NOT NULL;


