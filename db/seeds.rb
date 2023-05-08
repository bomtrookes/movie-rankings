puts "Destroying all records..."

Movie.destroy_all
Ranking.destroy_all

puts "Seeding the database..."

Movie.create!(title: "The Fellowship of the Ring" , year: 2001 , genre: "Fantasy")
Movie.create!(title: "The Matix", year: 1991 , genre: "Sci-Fi")
Movie.create!(title: "Let The Right One In", year: 2008, genre: "Horror" )
Movie.create!(title: "The Shining", year: 1980, genre: "Horror")
Movie.create!(title: "The Empire Strikes Back", year: 1980 , genre: "Sci-Fi" )
Movie.create!(title: "Rush Hour", year: 1991 , genre: "Action" )

Ranking.create!(story: 10,
                acting: 9,
                dialog: 8,
                cinematography: 8,
                soundtrack: 9,
                style: 9,
                pacing: 8,
                originality: 9,
                characters: 9,
                enjoyment: 9,
                movie_id: 1)

Ranking.create!(story: 8,
                acting: 8,
                dialog: 7,
                cinematography: 9,
                soundtrack: 6,
                style: 8,
                pacing: 8,
                originality: 10,
                characters: 7,
                enjoyment: 9,
                movie_id: 2)

Ranking.create!(story: 9,
                acting: 9,
                dialog: 8,
                cinematography: 8,
                soundtrack: 7,
                style: 8,
                pacing: 8,
                originality: 9,
                characters: 8,
                enjoyment: 9,
                movie_id: 3)

Ranking.create!(story: 7,
                acting: 7,
                dialog: 7,
                cinematography: 7,
                soundtrack: 8,
                style: 9,
                pacing: 7,
                originality: 8,
                characters: 8,
                enjoyment: 8,
                movie_id: 4)

Ranking.create!(story: 7,
                acting: 8,
                dialog: 8,
                cinematography: 5,
                soundtrack: 7,
                style: 6,
                pacing: 9,
                originality: 8,
                characters: 9,
                enjoyment: 9,
                movie_id: 5)

puts "Done seeding!"
