class CreateToys < ActiveRecord::Migration
  #def change
  #  create_table :toys do |t|
  #  end
  #end

  def up
    create_table :toys do |t|
      t.string :name 
      t.string :color
      t.belongs_to :pet
      t.timestamps
    end
  end

  def down
    drop_table :toys
  end
end
