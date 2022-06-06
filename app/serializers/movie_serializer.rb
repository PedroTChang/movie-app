class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :english

  has_many :genres
endend
