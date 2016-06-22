class User < ActiveRecord::Base
  has_many :lists
  has_many :items, through: :lists

  validates_presence_of :name, :email, :password
  validates_uniqueness_of :email
end
