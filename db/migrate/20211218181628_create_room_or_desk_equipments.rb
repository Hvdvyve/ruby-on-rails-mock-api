class CreateRoomOrDeskEquipments < ActiveRecord::Migration[6.1]
  def change
    create_table :room_or_desk_equipments do |t|
      t.integer :roomOrDeskId
      t.integer :equipmentId
      t.string :status

      t.timestamps
    end
  end
end
