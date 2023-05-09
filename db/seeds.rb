require "open-uri"
require "httparty"

url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{ENV['API_KEY']}"

response = HTTParty.get(url)
data = JSON.parse(response.body)


puts "Emptying the database..."

Movie.destroy_all

puts "Seeding the database..."

data['results'].each do |result|
  Movie.create!(
    title: result['title'],
    synopsis: result['overview'],
    year: result['release_date'],
    poster_url: "https://image.tmdb.org/t/p/w500/#{result['poster_path']}",
    genre: result['genre_ids'].to_s,
  )
end

puts "Done seeding!"
