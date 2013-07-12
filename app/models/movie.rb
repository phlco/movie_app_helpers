class Movie < ActiveRecord::Base
  attr_accessible :title, :mpaa_rating, :plot, :year, :poster
  has_and_belongs_to_many :actors
end