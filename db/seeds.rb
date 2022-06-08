# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# # #   Character.create(name: "Luke", movie: movies.first)

10.times do
  Movie.create(
    title: FFaker::Movie.title,
    year: FFaker::Vehicle.year,
    plot: FFaker::FreedomIpsum.paragraph,
    director: FFaker::Name.name,
  )
end

Actor.create(
  first_name: FFaker::Name.first_name,
  last_name: FFaker::Name.last_name,
  known_for: FFaker::Movie.title,
  movie_id: 1
  )

Actor.create(
  first_name: FFaker::Name.first_name,
  last_name: FFaker::Name.last_name,
  known_for: FFaker::Movie.title,
  movie_id: 2
  )

Actor.create(
  first_name: FFaker::Name.first_name,
  last_name: FFaker::Name.last_name,
  known_for: FFaker::Movie.title,
  movie_id: 3
)

Actor.create(
  first_name: FFaker::Name.first_name,
  last_name: FFaker::Name.last_name,
  known_for: FFaker::Movie.title,
  movie_id: 4
)

Genre.create(
  name: "Documentary",
)

Genre.create(
  name: "Drama",
)

Genre.create(
  name: "Comedy",
)

Genre.create(
  name: "Romance",
)

Genre.create(
  name: "Action & Adventure",
)
