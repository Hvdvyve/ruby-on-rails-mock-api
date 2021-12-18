# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Equipment.destroy_all

Equipment.create!([
    { name: 'Beemer', description: 'Some kind of projector.'}, 
    { name: 'Cable', description: 'Internet connections with cable connection.'}, 
    { name: 'Lamp', description: 'Movable lamp'}
    ])


RoomOrDesk.destroy_all

RoomOrDesk.create!([
    { wing: 'A', floor: 1, number: 'A12', places: 1, rod_type: 'Desk' },
    { wing: 'B', floor: 1, number: 'A1', places: 2, rod_type: 'Conference room' }
])


RoomOrDeskEquipment.destroy_all

RoomOrDeskEquipment.create!([
    { RoomOrDeskId: 1, EquipmentId:1, status: 'working' },
    { RoomOrDeskId: 1, EquipmentId:2, status: 'working' }
])