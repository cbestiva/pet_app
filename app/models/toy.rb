class Toy < ActiveRecord::Base
  before_save :capitalize_name, :capitalize_color
  belongs_to :pet

  def capitalize_name
    self.name = self.name.capitalize
  end
  
  def capitalize_color
    self.color = self.color.capitalize
  end
end
