class UserTab < ActiveRecord::Base
  belongs_to :user
  belongs_to :tab
  has_many :payments
end
