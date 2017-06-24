class AddAttributesToRegistration < ActiveRecord::Migration[5.1]
  def change
    add_column :registrations, :password, :string
    add_column :registrations, :last_name, :string
    add_column :registrations, :first_name, :string
    add_column :registrations, :date, :date
    add_column :registrations, :Pin_code, :integer
    add_column :registrations, :contact_number, :integer
    add_column :registrations, :city, :string
    add_column :registrations, :street, :string
  end
end