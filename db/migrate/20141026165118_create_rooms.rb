class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_num
      t.integer :dorm_id

      t.timestamps
    end
  end
end
