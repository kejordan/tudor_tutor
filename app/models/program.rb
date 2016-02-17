class Program < ActiveRecord::Base
  has_many :user_programs
  has_many :users, through: :user_programs
end
