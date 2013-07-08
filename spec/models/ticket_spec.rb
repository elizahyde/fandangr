require 'spec_helper'

describe Ticket do
  #ticket = Ticket.new(:date => 07/13/13, :time => 05:05, :seat => 21, :movie_id => 5)
  #ticket.save
  #tickets = Ticket.all
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:time) }
  it { should validate_presence_of(:seat) }
  it { should validate_presence_of(:movie_id) }

end