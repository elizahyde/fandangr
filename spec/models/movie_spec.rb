require 'spec_helper'

describe Movie do
  it { should have_many(:tickets) }
  it { should have_many(:users).through(:tickets) }

end