use movies;

select * from movies_sql; 

-- retrive the names of all the bollywood movies which are of drama genre in the dataset
select movie_name from movies_sql where genre = 'drama';

-- retrive the names of all the bollywood movies of amir khan in the dataset
select movie_name from movies_sql where lead_star = 'aamir khan';

-- retrive the names of all the bollywood movies which are directed by ramgopal verma in the dataset
select movie_name from movies_sql where director = 'ram gopal verma';

-- retrive the names of all the bollywood movies have been release over 1000 numbers of screen in the dataset
select movie_name from movies_sql where number_of_screens > 1000;

-- retrive the names of all the bollywood movies which have generated revenue more than 700000000 in the dataset
select movie_name from movies_sql where revenue > 700000000;

-- retrive the names of all the bollywood movies which have budget less than 1cr in the dataset
select movie_name from movies_sql where budget < 10000000;

-- retrive the names of all the bollywood movies which are flop in the dataset
select movie_name as flop_movies from movies_sql where (revenue - budget)<0;

-- retrive the names and profit of all the bollywood movies in the dataset
select movie_name,(revenue - budget) as profit from movies_sql where revenue > budget;

-- retrive the names and loss of all the bollywood movies in the dataset
select movie_name,(revenue - budget) as loss from movies_sql where revenue < budget;

-- retrive the names of all the bollywood movies which have been release on holydays in the dataset
select movie_name from movies_sql where release_period = 'holiday';

-- retrive the names of all the bollywood movies which have lead star as akshay kumar and directed by priyadarshan in the dataset
select movie_name from movies_sql where lead_star = 'akshay kumar' and director = 'priyadarshan';

-- retrive the names of all the bollywood movies starting with 'a' in the dataset
select movie_name from movies_sql where movie_name like 'a%';

-- retrive the names of all the bollywood movies ending with 'a' in the dataset
select movie_name from movies_sql where movie_name like '%a';

-- retrive the names of the bollywood movies having 'a' at second place of the name in the dataset
select movie_name from movies_sql where movie_name like '_a%';

-- retrive the names of all the bollywood movies having music of amit trivedi the dataset
select movie_name from movies_sql where music_director = 'amit trivedi';

-- retrive thr names of all the comedy movies of akshay kumar in the dataset
select movie_name from movies_sql where lead_star = 'akshay kumar' and genre = 'comedy';

-- retrive the name of movies and star name starring khan in the dataset
select movie_name, lead_star from movies_sql where lead_star like '%khan%';

-- retrive all the information of movies race and race2 in the dataset
select * from movies_sql where movie_name in ('race','race2');

-- retrive the names of all the thriller bollywood movies in the dataset
select movie_name, genre from movies_sql where genre = 'thriller';

-- retrive the name and budget of all the bollywood movies according to the highest budget to lowest budget in the dataset
select movie_name, budget from movies_sql order by budget desc;

-- retrive the names ond budget of top 5 bollywood movies with highest budget in the dataset
select movie_name, budget from movies_sql order by budget desc limit 5;

-- retrive the names ond budget of top 10 bollywood movies with highest revenue generation in the dataset
select movie_name, revenue from movies_sql order by revenue desc limit 10;

-- retrive the names of top 5 movies of salman khan in the dataset
select movie_name, lead_star,budget from movies_sql where lead_star = 'salman khan' order by budget desc limit 5; 

-- retrive the names of top 5 floped movies in the dataset
select movie_name from movies_sql where (revenue - budget) < 0 order by (revenue - budget) desc limit 5;

-- retrive the names of top 5 hit movies in the dataset
select movie_name from movies_sql where revenue > budget order by revenue > budget desc limit 5;

-- which is the second movie release on maximum screen
 select movie_name, number_of_screens from movies_sql order by number_of_screens desc limit 1,1;

-- which is the 10th movie with highest budget
select * from movies_sql order by budget desc limit 9,1;

-- which is the second movie of amitabh bachchan with highest budget
select movie_name, budget from movies_sql where lead_star = 'amitabh bachchan' order by budget desc limit 1,1;

-- which are the floped movies of akshay kumar
select * from movies_sql where lead_star = 'akshay kumar' and (revenue - budget)<0;

-- with which director shahrukh khan have given the biggest hit movie
select movie_name, director, budget from movies_sql where lead_star = 'shahrukh khan' order by revenue > budget desc limit 1;