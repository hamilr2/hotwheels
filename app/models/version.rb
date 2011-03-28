class Version < ActiveRecord::Base
  belongs_to :casting
  has_many :car
  has_one :wheel
end
