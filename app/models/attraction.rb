class Attraction < ActiveRecord::Base
  # write associations here
  has_many :rides #it "has many rides" do
  has_many :users, through: :rides #it "has many users through rides" do

  #it "is valid with a name, min_height, nausea_rating, happiness_rating, and ticket number" do
  validates :name, presence: true
  validates :min_height, presence: true
  validates :nausea_rating, presence: true
  validates :happiness_rating, presence: true
  validates :tickets, presence: true
end
