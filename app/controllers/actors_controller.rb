class ActorsController < ApplicationController
  def index
    actor = Actor.all

    render json: actor.as_json
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    actor.save
    render json: actor.as_json
  end

  def update
  end

  def delete
  end

  def query
  end

  def url
    actor = Actor.find_by(first_name: params[:first_name])
    render json: actor.as_json
  end

  def body
    body = Actor.find_by(
      first_name: params[:first_name],
    )
    render json: body.as_json
  end
end
