class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
    	t.string :email, null: false
    end
  end
end

