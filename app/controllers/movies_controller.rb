class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    movie = Movie.all

    render json: movie.as_json
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      title: params[:title],
      director: params[:director],
      year: params[:year],
      plot: params[:plot],
      english: params[:english]
    )
    if movie.save
      render json: movie.as_json
    else
      render json: { errors: movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.director = params[:director] || movie.director
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.english = params[:english] || movie.english

    if movie.save
      render json: movie.as_json
    else
      render json: { errors: movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
  end
end
