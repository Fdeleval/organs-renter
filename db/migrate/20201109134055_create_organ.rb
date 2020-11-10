class CreateOrgan < ActiveRecord::Migration[6.0]
  def change
    create_table :organs do |t|
      t.string :organ_type, null: false
      t.text :description, null: false
      t.references :user, null: false
      t.boolean :available, null: false
      t.integer :price, null: false
    end
  end
end
