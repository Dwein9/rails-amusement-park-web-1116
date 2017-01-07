class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user

  validates :user_id, presence: true
  validates :attraction_id, presence: true

  def take_ride
    response = []
    unless user.tickets > attraction.tickets
      response << "You do not have enough tickets to ride the #{attraction.name}."
    end

    unless user.height > attraction.min_height
      response << "You are not tall enough to ride the #{attraction.name}."
    end

    if response != []
      return  ["Sorry.", response].join(" ")
    else
      user.tickets -= attraction.tickets
      user.nausea += attraction.nausea_rating
      user.happiness += attraction.happiness_rating
      user.save
     return "Thanks for riding the #{attraction.name}!"
    end
  end
end
