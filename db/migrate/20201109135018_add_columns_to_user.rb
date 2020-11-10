class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :smoker, :string
      add_column :users, :drinker, :string
      add_column :users, :donor, :string
      add_column :users, :description, :text
      add_column :users, :address, :string
    end
end
