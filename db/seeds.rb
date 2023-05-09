url = https://tmdb.lewagon.com/movie/top_rated?api_key=ENV[APIKEY]



puts "Seeding the database..."

Movie.create!(title: "The Fellowship of the Ring" , year: 2001 , genre: "Fantasy", rating: 9.1)
Movie.create!(title: "The Martix", year: 1999 , genre: "Sci-Fi", rating: 8.7)
Movie.create!(title: "Let The Right One In", year: 2008, genre: "Horror", rating: 8.1)
Movie.create!(title: "The Shining", year: 1980, genre: "Horror", rating: 7.8)
Movie.create!(title: "The Empire Strikes Back", year: 1980 , genre: "Sci-Fi", rating: 8.5)
Movie.create!(title: "Rush Hour", year: 1997 , genre: "Action", rating: 7.8)
Movie.create!(title: "The Dark Knight", year: 2008 , genre: "Action", rating: 9.0)
Movie.create!(title: "The Godfather", year: 1972 , genre: "Crime", rating: 9.2)
Movie.create!(title: "The Godfather: Part II", year: 1974 , genre: "Crime", rating: 9.0)

puts "Done seeding!"
