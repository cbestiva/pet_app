class Ownership < ActiveRecord::Base
  belongs_to :owner, dependent: :destroy
  belongs_to :pet, dependent: :destroy
end
