# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Equipment.create!([
    { name: 'Beemer', description: 'Some kind of projector.', status: 'working'}, 
    { name: 'Cable', description: 'Internet connections with cable connection.', status: 'working'}, 
    { name: 'Lamp', description: 'Movable lamp', status: 'working'}
    ])

RoomOrDesk.create!([
    { wing: 'A', floor: 1, number: 'A12', places: 1, type: 'Desk' }
    { wing: 'B', floor: 1, number: 'A1', places: 2, type: 'Conference room' }
])

RoomOrDeskEquipment.create!([
    { RoomOrDeskId: 1, EquipmentId:1 }
    { RoomOrDeskId: 1, EquipmentId:2 }
])