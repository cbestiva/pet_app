class CreatePetsShirts < ActiveRecord::Migration
  def change
    create_table :pets_shirts, id: false do |t|
      t.integer :pet_id
      t.integer :shirt_id
    end
  end
end
