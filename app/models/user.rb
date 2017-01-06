class User < ActiveRecord::Base
  # write associations here
<<<<<<< HEAD
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password


  def mood
    unless nausea.blank? && happiness.blank?
      nausea > happiness ? "sad" : "happy"
    end
  end

=======
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if nausea > happiness
      "sad"
    else
      "happy"
    end
  end


>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
end
