url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{ENV['API_KEY']}"

puts "Seeding the database..."

Movie.create!(title: "The Fellowship of the Ring", year: 2001 , genre: "Fantasy")
Movie.create!(title: "The Martix", year: 1999 , genre: "Sci-Fi")
Movie.create!(title: "Let The Right One In", year: 2008, genre: "Horror")
Movie.create!(title: "The Shining", year: 1980, genre: "Horror")
Movie.create!(title: "The Empire Strikes Back", year: 1980 , genre: "Sci-Fi")
Movie.create!(title: "Rush Hour", year: 1997 , genre: "Action")
Movie.create!(title: "The Dark Knight", year: 2008 , genre: "Action")
Movie.create!(title: "The Godfather", year: 1972 , genre: "Crime")
Movie.create!(title: "The Godfather: Part II", year: 1974 , genre: "Crime")

puts "Done seeding!"
