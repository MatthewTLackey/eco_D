class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email, presence: true
  validates_uniqueness_of :email

  validates :username, presence: true

  #validates :password, confirmation: true
  validates :password_confirmation, presence: true

  has_many :accounts
  has_many :surveys, :through => :accounts

  
end
