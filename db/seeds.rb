# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "cute animals")
Category.create(name: "technology")
Category.create(name: "food")
Category.create(name: "travel")
User.create(username: 'RealBigFish')
User.create(username: 'ImNoRobot')
User.create(username: 'JetLagged')
User.create(username: 'HoomanMaster')