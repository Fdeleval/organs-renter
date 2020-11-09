class Changedonorinuser < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.change :donor, :boolean, default: false
    end
  end
end
