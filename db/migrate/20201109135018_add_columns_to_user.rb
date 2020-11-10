class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :smoker, :integer, default: 0
      add_column :users, :drinker, :integer, default: 0
      add_column :users, :donor, :integer, default: 0
      add_column :users, :description, :text
      add_column :users, :address, :string
    end
end
