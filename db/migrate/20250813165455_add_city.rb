class AddCity < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :city, :string
  end
end
