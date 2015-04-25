class CreatePets < ActiveRecord::Migration
  #def change
  #  create_table :pets do |t|
  #  end
  #end

  def up
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :pet_type
    end
  end

  def down
    drop_table :pets
  end
end
