class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :bookings, null: false
      t.text :content
      t.integer :rating
    end
  end
end
