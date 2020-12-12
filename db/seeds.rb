# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(email: "admin@example.com",
	          password: "000000",
	          password_confirmation: "000000")

Creater.create!(name: "麻子",
    		    profile: "麻の栽培から製糸、織物、作品制作まで手掛けます",
			    email: "creater@example.com",
	            password: "000000",
	            password_confirmation: "000000")