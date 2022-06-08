class AddGenderandAgetoActor < ActiveRecord::Migration[7.0]
  def change
    add_column :actors, :gender, :string
    add_column :actors, :age, :integer
  end
end
