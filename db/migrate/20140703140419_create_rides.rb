class CreateRides < ActiveRecord::Migration
  # Write your migrations here
<<<<<<< HEAD
  create_table :rides do |t|
    t.integer :user_id
    t.integer :attraction_id
=======
  def change
    create_table :rides do |t|
      t.integer :user_id
      t.integer :attraction_id
    end
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
  end
end
