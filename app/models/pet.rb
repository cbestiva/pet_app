class Pet < ActiveRecord::Base
  validates_presence_of :name
  before_save :capitalize_name, :capitalize_type

  def capitalize_name
    self.name = self.name.capitalize
  end

  def capitalize_type
    self.pet_type = self.pet_type.capitalize
  end
end
