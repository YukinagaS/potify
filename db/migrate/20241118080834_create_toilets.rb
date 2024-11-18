class CreateToilets < ActiveRecord::Migration[7.1]
  def change
    create_table :toilets do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
