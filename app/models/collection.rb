class Collection < ActiveRecord::Base
  has_and_belongs_to_many :cars
  belongs_to :user

  def list_of_cars
    Car.find(:all, :order=> "version ASC")
  end

  def hascar?(car)
    cars.include?(car)
  end
end
