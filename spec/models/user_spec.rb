require 'spec_helper'

# This I copied from the sample thing he did.
describe User do
  it "signs up" do
    user = User.new(:name => "Elizabeth Ramberg", :age => 28, :username => "ehramberg")
    user.save

    users = User.all
    expect(users).to include(user)
  end
# There should be a minumum age thing.
  it "signs up with no age" do
    user = User.new(:name => "Sumeet Jain", :username => "sjain")

    expect(user.valid?).to be_false
  end
end