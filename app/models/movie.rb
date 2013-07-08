class Movie < ActiveRecord::Base
  attr_accessible :duration, :name, :rating, :synopsis, :tickets
  has_many :tickets
  has_many :users, :through => :tickets
end
