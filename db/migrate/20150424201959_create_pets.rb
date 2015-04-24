class CreatePets < ActiveRecord::Migration
  #def change
  #  create_table :pets do |t|
  #  end
  #end

  def up
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :type
    end
  end

  def down
    dropt_table :pets
  end
end
