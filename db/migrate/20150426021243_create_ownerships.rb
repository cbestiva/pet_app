class CreateOwnerships < ActiveRecord::Migration
  #def change
  #  create_table :ownerships do |t|
  #  end
  #end

  def up
    create_table :ownerships do |t|
      t.references :owner
      t.references :pet
      t.timestamps
    end
    add_index :ownerships, :owner_id
    add_index :ownerships, :pet_id
    add_index :ownerships, [:owner_id, :pet_id], unique: true
  end

  def down
    drop_table :ownerships
  end
end
