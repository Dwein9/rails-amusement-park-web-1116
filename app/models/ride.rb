class Ride < ActiveRecord::Base
  # write associations here
<<<<<<< HEAD
  belongs_to :attraction
  belongs_to :user

  validates :user_id, presence: true
  validates :attraction_id, presence: true
=======
  belongs_to :user
  belongs_to :attraction

>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a

  def take_ride
    response = []
    unless user.tickets > attraction.tickets
<<<<<<< HEAD
      response << "You do not have enough tickets to ride the #{attraction.name}."
=======
      response << "You do not have enough tickets the #{attraction.name}."
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
    end

    unless user.height > attraction.min_height
      response << "You are not tall enough to ride the #{attraction.name}."
    end
<<<<<<< HEAD
    if response != []
      return  ["Sorry.", response].join(" ")
=======
    unless response.empty?
      ["Sorry.", response].join(" ")
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
    else
      user.tickets -= attraction.tickets
      user.nausea += attraction.nausea_rating
      user.happiness += attraction.happiness_rating
      user.save
<<<<<<< HEAD
     return "Thanks for riding the #{attraction.name}!"
    end
  end
=======
      "Thanks for riding on the #{attraction.name}!"
    end
  end

>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
end
