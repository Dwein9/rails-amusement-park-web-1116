class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
<<<<<<< HEAD
  create_table :users do |t|
    t.string :name
    t.string :password_digest
    t.integer :nausea
    t.integer :happiness
    t.integer :tickets
    t.integer :height
    t.boolean :admin, :default => "false"
=======
  def change
    create_table :users do |t|
      t.string :name
      t.integer :nausea
      t.integer :happiness
      t.integer :tickets
      t.integer :height
      t.string :password_digest
      t.boolean :admin, default: false 
    end
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
  end
end
