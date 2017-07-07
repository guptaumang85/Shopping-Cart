class CreateUsers < ActiveRecord::Migration[5.1]

  def change
    create_table :users do |t|
      t.string :email,:limit => 50, :null => false
      t.string :password_digest
      t.string :last_name
      t.string :first_name
      t.datetime :date_of_birth
      t.bigint :contact_number
      t.integer :user_type
      t.timestamps
    end
  end
end
