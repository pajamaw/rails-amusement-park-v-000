class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    if ticket_requirement_met && height_requirement_met
      go_on_ride
    elsif ticket_requirement_met && !height_requirement_met
      too_short_message
    elsif !ticket_requirement_met && height_requirement_met
      too_poor_message
    else
      too_poor_and_too_short
    end
  end


  def ride_comp_message
    "Thanks for riding the #{attraction.name}!"
  end

  def too_short_message
     "Sorry. You are not tall enough to ride the #{attraction.name}."
  end

  def too_poor_message
    "Sorry. You do not have enough tickets for the #{attraction.name}."
  end

  def too_poor_and_too_short
    "Sorry. You do not have enough tickets for the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
  end

  def ticket_requirement_met
    self.user.tickets > self.attraction.tickets
  end

  def height_requirement_met
    self.user.height > self.attraction.min_height
  end


  def subtract_tickets
   self.user.tickets - self.attraction.tickets
  end

  def add_happiness
    self.user.happiness + self.attraction.happiness_rating
  end

  def add_nausea
    self.user.nausea + self.attraction.nausea_rating
  end

  def update_user_attr
    self.user.update(tickets: subtract_tickets, happiness: add_happiness, nausea: add_nausea)
    self.user.save
  end

    def go_on_ride
    subtract_tickets
    add_happiness
    add_nausea
    update_user_attr
    ride_comp_message
  end

end
