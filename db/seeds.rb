# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create([{name: 'Dan' phone: 1 contact: 'Dan'}])
Item.create([{name: 'gum'},{name: 'sucker' },{name: 'apple'}])
Order.create([{quantity: 1 item_id: 1 total: 1 customer_id: 1},
 {quantity: 2 item_id: 2 total: 2 customer_id: 2},
 {quantity: 3 item_id: 3 total: 2 customer_id: 3}])