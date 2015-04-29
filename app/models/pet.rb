class Pet < ActiveRecord::Base
  validates_presence_of :name
  before_save :capitalize_name, :capitalize_type
  has_many :ownerships
  has_many :owners, through: :ownerships
  has_many :toys
  has_and_belongs_to_many :shirts

  def capitalize_name
    self.name = self.name.capitalize
  end

  def capitalize_type
    self.pet_type = self.pet_type.capitalize
  end

  def display_owners
    self.owners.each do |owner|
      puts owner.first_name
    end
  end
end
