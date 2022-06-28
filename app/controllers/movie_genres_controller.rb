class MovieGenresController < ApplicationController
  def create
    MovieGenre.create(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
  end
end
