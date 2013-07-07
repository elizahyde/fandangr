require 'spec_helper'

describe User do
  it "signs up" do
    user = User.new(:name => "Elizabeth Ramberg", :age => 28, :username => "ehramberg", :password => "1234")
    user.save

    users = User.all
    expect(users).to include(user)
  end

  it "user cannot sign up without age" do
    user = User.new(:name => "Sumeet Jain", :username => "sjain", :password => "5678")

    expect(user.valid?).to be_false
  end

  it { should validate_uniqueness_of(:username) }
  it { should have_many(:tickets) }
  it { should have_many(:movies).through(:tickets) }

end
