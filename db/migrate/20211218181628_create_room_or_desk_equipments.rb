class CreateRoomOrDeskEquipments < ActiveRecord::Migration[6.1]
  def change
    create_table :room_or_desk_equipments do |t|
      t.integer :RoomOrDeskId
      t.integer :EquipmentId

      t.timestamps
    end
  end
end
