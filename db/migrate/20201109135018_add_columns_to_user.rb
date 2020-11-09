class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :smoker, :boolean
      add_column :users, :drinker, :boolean
      add_column :users, :donor, :boolean
      add_column :users, :description, :text
      add_column :users, :address, :string
    end
end
