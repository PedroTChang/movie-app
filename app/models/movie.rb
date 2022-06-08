class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :actors #* Returns array of many actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres = Genre.find_by(:name)
    render json: genres.as_json
  end
end
