class AddDetailsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :address_line_1, :string
    add_column :orders, :address_line_2, :string
    add_column :orders, :province, :string
    add_column :orders, :city, :string
    add_column :orders, :mobile_number, :string
    add_column :orders, :zip, :integer
  end
end
