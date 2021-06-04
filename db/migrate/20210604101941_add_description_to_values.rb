class AddDescriptionToValues < ActiveRecord::Migration[6.0]
  def change
    add_column :values, :description, :string
  end
end
