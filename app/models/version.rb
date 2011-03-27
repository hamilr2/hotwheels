class Version < ActiveRecord::Base
  has_one :casting
  has_one :wheel
end
