class CreateAttractions < ActiveRecord::Migration
<<<<<<< HEAD
 # Write your migrations here
 create_table :attractions do |t|
   t.string :name
   t.integer :tickets
   t.integer :nausea_rating
   t.integer :happiness_rating
   t.integer :min_height
 end
=======
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :nausea_rating
      t.integer :happiness_rating
      t.integer :tickets
      t.integer :min_height
    end
  end
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
end
