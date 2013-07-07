class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :age, :name, :password, :username, :password_confirmation

  has_many :tickets
  has_many :movies, :through => :tickets

  validates :username, :uniqueness => true
  validates :age, :presence => { :message => "Age cannot be blank" }

end
