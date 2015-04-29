class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :color
      t.timestamps
    end
  end
end
