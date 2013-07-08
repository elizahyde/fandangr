require 'spec_helper'

# This I copied from the sample thing he did.
describe User do
  it "signs up" do
    user = User.new(:name => "Elizabeth Ramberg", :age => 28, :username => "ehramberg", :password => "1234", :password_confirmation => "1234")
    user.save

    users = User.all
    expect(users).to include(user)
  end
# There should be a minumum age thing.
  it "user can't sign up without an age" do
    user = User.new(:name => "Sumeet Jain", :username => "sjain", :password => "1234", :password_confirmation => "1234")

    expect(user.valid?).to be_false
  end

  it { should validate_uniqueness_of(:username) }
  it { should ensure_inclusion_of(:age).in_range(14..150) }
  it { should have_many(:tickets) }
  it { should have_many(:movies).through(:tickets)}
end