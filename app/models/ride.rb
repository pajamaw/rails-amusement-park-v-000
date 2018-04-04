class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction #it "belongs to one attraction" do
  belongs_to :user #it "belongs to one user" do

  #it "is valid with a user_id and a attraction_id" do
  validates :user_id, presence: true
  validates :attraction_id, presence: true

  def enough_tickets
    self.user.tickets >= self.attraction.tickets
  end

  def height_requirement
    self.user.height >= self.attraction.min_height
  end

  def take_ride
    #it "has a method 'take_ride' that accounts for the user not having enough tickets" do
    #user.tickets < attraction.tickets
    #self.user.tickets.count < attraction.tickets


    if !enough_tickets && !height_requirement
      "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."

    elsif !enough_tickets
      "Sorry. You do not have enough tickets to ride the #{attraction.name}."

    #it "has a method 'take_ride' that accounts for the user not being tall enough" do
    elsif !height_requirement
      "Sorry. You are not tall enough to ride the #{attraction.name}."


    end

    #it "has a method 'take_ride' that updates ticket number" do

    #it "has a method 'take_ride' that updates the user's nausea" do
    #user.nausea == 5

    #it "has a method 'take_ride' that updates the user's happiness" do
    #user.happiness == 3
    #end
  end
end
