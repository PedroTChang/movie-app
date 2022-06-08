class AddDirectorToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :director, :string
    add_column :movies, :english, :boolean, default: true
  end
end
