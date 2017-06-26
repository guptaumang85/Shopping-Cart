class AddAttributesToRegistration < ActiveRecord::Migration[5.1]
  def change
    add_column :registrations, :password, :string
    add_column :registrations, :last_name, :string
    add_column :registrations, :first_name, :string
    add_column :registrations, :date_of_birth, :date
    add_column :registrations, :contact_number, :integer
  end
end