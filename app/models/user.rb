class User < ActiveRecord::Base
  # write associations here
  has_many :rides #it "has many rides" do
  has_many :attractions, through: :rides #it "has many attractions through rides" do

  #it "is valid with a name, password, happiness, nausea, height, and tickets" do
  validates :name, presence: true
  validates :password, presence: true
  validates :happiness, presence: true
  validates :nausea, presence: true
  validates :height, presence: true
  validates :tickets, presence: true
  
  def mood
    #it "has a method 'mood' that returns 'sad' when the user is more nauseous than happy" do
    #it "has a method 'mood' that returns 'happy' when the user is more happy than nauseous" do
  end

  #it "is not valid without a password" do
  #it "is valid with an admin boolean" do
  #it "defaults to admin => false" do

end
