class AddCoordinatesToToilets < ActiveRecord::Migration[7.1]
  def change
    add_column :toilets, :latitude, :float
    add_column :toilets, :longitude, :float
  end
end
