class Shirt < ActiveRecord::Base
  has_and_belongs_to_many :pets
  accepts_nested_attributes_for :pets
end
