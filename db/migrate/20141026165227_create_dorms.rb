class CreateDorms < ActiveRecord::Migration
  def change
    create_table :dorms do |t|
      t.string :name
      t.integer :price
      t.string :location
      t.integer :num_roomates
      t.string :dorm_image
      t.string :room_image
      t.integer :school_id

      t.timestamps
    end
  end
end
