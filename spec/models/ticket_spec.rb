require 'spec_helper'

describe Ticket do
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:time) }
  it { should validate_presence_of(:seat) }
  it { should validate_presence_of(:movie_id) }

end