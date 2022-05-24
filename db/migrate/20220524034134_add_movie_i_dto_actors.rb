class AddMovieIDtoActors < ActiveRecord::Migration[7.0]
  def change
    add_column :actors, :movie_id, :integer
  end
end
