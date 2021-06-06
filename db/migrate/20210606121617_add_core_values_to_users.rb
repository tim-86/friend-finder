class AddCoreValuesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :core_values, :integer, array: true, default: []
  end
end
