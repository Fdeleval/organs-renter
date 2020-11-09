class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :organ, null: false
      t.references :user, null: false
      t.datetime :date_start, null: false
      t.datetime :date_end, null: false
    end
  end
end
