class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness && self.nausea
      mood = self.happiness - self.nausea
      if mood > 0
        "happy"
      else
        "sad"
      end
    end
  end

  def num_of_rides
    self.attractions.count
  end
end
