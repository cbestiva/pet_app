class CreateOwnerships < ActiveRecord::Migration
  #def change
  #  create_table :ownerships do |t|
  #  end
  #end

  def up
    create_table :ownerships do |t|
      t.references :owners
      t.references :pets
    end
  end

  def down
    drop_table :ownerships
  end
end
