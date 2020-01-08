class Dojo < ApplicationRecord
  validates :name, :city, :state, presence:true
  validates :state, length: {is: 2}

  has_many :ninjas

  before_destroy :remove_ninjas

  def remove_ninjas
    self.ninjas.destroy_all
  end
end
