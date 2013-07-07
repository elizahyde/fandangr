class Ticket < ActiveRecord::Base
  attr_accessible :date, :movie_id, :seat, :time, :user_id
  belongs_to :movie
  belongs_to :user

end
