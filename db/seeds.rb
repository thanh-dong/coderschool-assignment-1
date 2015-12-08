# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Order.delete_all
Food.delete_all
Menu.delete_all

Menu.create(name: "Breakfast", description: "breakfast")
Menu.create(name: "Lunch", description: "lunch")
Menu.create(name: "Dinner", description: "dinner")
Menu.create(name: "Drinks", description: "drinks")

Menu.all.each do |m|
    m.foods << Food.new(name: "Com Tam", description: "Vietnamese rice with pork", price: 50000,img: "http://loremflickr.com/320/240/comtam")
    m.foods << Food.new(name: "Bun rieu", description: "Rice noodle with tomato, crab and shrimb", price: 40000,img: "http://loremflickr.com/320/240/bunrieu")
    m.foods << Food.new(name: "Banh canh cua", description: "Rice noodle with crab", price: 50000,img: "http://loremflickr.com/320/240/banhcanhcua")
    m.foods << Food.new(name: "Pho bo", description: "Beef noodle", price: 80000,img: "http://loremflickr.com/320/240/phobo")
    m.foods << Food.new(name: "Pho ga", description: "Chicken noodle", price: 70000,img: "http://loremflickr.com/320/240/phoga")
    m.foods << Food.new(name: "Banh mi", description: "Bread", price: 30000,img: "http://loremflickr.com/320/240/banhmi")
    m.save!
end
