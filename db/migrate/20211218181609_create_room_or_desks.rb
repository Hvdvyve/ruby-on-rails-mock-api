class CreateRoomOrDesks < ActiveRecord::Migration[6.1]
  def change
    create_table :room_or_desks do |t|
      t.string :wing
      t.integer :floor
      t.string :number
      t.integer :places
      t.string :type

      t.timestamps
    end
  end
end
