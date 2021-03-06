class Version < ActiveRecord::Base
  belongs_to :casting
  has_many :cars
  belongs_to :wheel

  def casting_string
    "#{main_color} #{Casting.find(casting_id).name} (#{year} #{series})"
  end
end
