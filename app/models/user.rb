class User < ActiveRecord::Base
  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  attr_accessor :email, :password, :name
end