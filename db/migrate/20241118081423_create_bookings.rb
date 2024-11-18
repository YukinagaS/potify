class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :toilet, null: false, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.string :status

      t.timestamps
    end
  end
end
