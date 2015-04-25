class Pet < ActiveRecord::Base
  validates_presence_of :name
  before_save :capitalize_name, :capitalize_type
  has_and_belongs_to_many :owners

  def capitalize_name
    self.name = self.name.capitalize
  end

  def capitalize_type
    self.pet_type = self.pet_type.capitalize
  end
end
