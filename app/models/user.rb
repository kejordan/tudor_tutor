class User < ActiveRecord::Base
  has_many :user_programs
  has_many :programs, through: :user_programs
  has_many :contents
end
