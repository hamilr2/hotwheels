class Wheel < ActiveRecord::Base
  has_many :version
  belongs_to :wheel_style
end
