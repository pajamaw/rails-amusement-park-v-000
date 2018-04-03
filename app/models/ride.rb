class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction #it "belongs to one attraction" do
  belongs_to :user #it "belongs to one user" do

  #it "is valid with a user_id and a attraction_id" do
  validates :user_id, presence: true
  validates :attraction_id, presence: true

  def take_ride
    #it "has a method 'take_ride' that accounts for the user not having enough tickets" do
    #it "has a method 'take_ride' that accounts for the user not being tall enough" do
    #it "has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets" do
    #it "has a method 'take_ride' that updates ticket number" do
    #it "has a method 'take_ride' that updates the user's nausea" do
    #it "has a method 'take_ride' that updates the user's happiness" do
  end

end
