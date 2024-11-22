class AddShortDescriptionToToilets < ActiveRecord::Migration[7.1]
  def change
    add_column :toilets, :short_description, :text
  end
end
