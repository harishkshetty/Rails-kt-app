class AddCityToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cityname,:string
  end
end
