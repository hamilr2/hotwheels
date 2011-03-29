class Casting < ActiveRecord::Base
  has_many :versions
  belongs_to :manufacturer
end
