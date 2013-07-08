class Ticket < ActiveRecord::Base
  attr_accessible :date, :movie_id, :seat, :time, :user_id, :seats
  belongs_to :movie
  belongs_to :user

end
