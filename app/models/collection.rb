class Collection < ActiveRecord::Base
  has_and_belongs_to_many :cars
  belongs_to :user
end
