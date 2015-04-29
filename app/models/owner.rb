class Owner < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  before_save :capitalize_first_name, :capitalize_last_name
  has_many :ownerships
  has_many :pets, through: :ownerships
  accepts_nested_attributes_for :ownerships

  def capitalize_first_name
    self.first_name = self.first_name.capitalize
  end

  def capitalize_last_name
    self.last_name = self.last_name.capitalize
  end
end
