class Attraction < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :users, through: :rides
<<<<<<< HEAD

  validates :name, presence: true
  validates :min_height, presence: true
  validates :nausea_rating, presence: true
  validates :happiness_rating, presence: true
  validates :tickets, presence: true
=======
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
end
