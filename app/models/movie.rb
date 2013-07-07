class Movie < ActiveRecord::Base
  attr_accessible :duration, :name, :rating, :synopsis
  has_many :tickets
  has_many :users, :through => :tickets
end
