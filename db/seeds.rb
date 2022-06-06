# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# # #   Character.create(name: "Luke", movie: movies.first)

# # # require "ffaker"

# Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#     movie_id: 1
#   )

#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#     movie_id: 2
#   )

#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#     movie_id: 3
#   )

#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#     movie_id: 4
#   )

#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#     movie_id: 5
#   )

#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#     movie_id: 6
#   )

#   Actor.create(
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#     movie_id: 7
#   )
# # 10.times do
# #   Movie.create(
# #     title: FFaker::Movie.title,
# #     year: FFaker::Vehicle.year,
# #     plot: FFaker::FreedomIpsum.paragraph,
# #   )
# # end

10.times do
  Genre.create(
    name: FFaker::Music.genre,
  )
end