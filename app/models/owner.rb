class Owner < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  before_save :capitalize_first_name, :capitalize_last_name
  has_and_belongs_to_many :pets

  def capitalize_first_name
    self.first_name = self.first_name.capitalize
  end

  def capitalize_last_name
    self.last_name = self.last_name.capitalize
  end
end
