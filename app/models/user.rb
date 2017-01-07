class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password


  def mood
    unless nausea.blank? && happiness.blank?
      nausea > happiness ? "sad" : "happy"
    end
  end
end
