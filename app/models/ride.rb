class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction


  def take_ride
    response = []
    unless user.tickets > attraction.tickets
      response << "You do not have enough tickets the #{attraction.name}."
    end

    unless user.height > attraction.min_height
      response << "You are not tall enough to ride the #{attraction.name}."
    end
    unless response.empty?
      ["Sorry.", response].join(" ")
    else
      user.tickets -= attraction.tickets
      user.nausea += attraction.nausea_rating
      user.happiness += attraction.happiness_rating
      user.save
      "Thanks for riding on the #{attraction.name}!"
    end
  end

end
