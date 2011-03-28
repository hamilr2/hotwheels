class Car < ActiveRecord::Base
  belongs_to :version
  has_and_belongs_to_many :collections
end
