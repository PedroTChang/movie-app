class Movie < ApplicationRecord
  has_many :actors #* Returns array of many actors
end
