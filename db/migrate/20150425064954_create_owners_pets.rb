class CreateOwnersPets < ActiveRecord::Migration
  #def change
  #  create_table :owners_pets do |t|
  #  end
  #end

    def up
    create_table :owners_pets, id: false do |t| #pass id false b/c table doesn't represent a model
      t.references :owner
      t.references :pet
    end
    add_index :owners_pets, :owner_id
    add_index :owners_pets, :pet_id
  end
  
  def down
    drop_table :owners_pets
  end

end
