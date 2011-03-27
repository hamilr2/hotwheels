class Car < ActiveRecord::Base
  has_one :version
  has_and_belongs_to_many :collections
end
