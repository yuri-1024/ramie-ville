# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
	email: "admin@example.com",
	password: "000000",
	password_confirmation: "000000"
	)

Creater.create!(
	name: "麻田　太郎",
    profile: "麻の栽培から製糸、織物、作品制作まで手掛けます",
    email: "creater1@example.com",
    password: "000000",
    password_confirmation: "000000"
    )

Creater.create!(
	name: "asaco*",
    profile: "手織り生地で作品の制作を行っています",
    email: "creater2@example.com",
    password: "000000",
    password_confirmation: "000000"
    )


#　--creater1の作品--

Item.create!(
	name: "小物入れ",
	body: "手織りした生地で作った小物入れです。文庫本がすっぽり入るサイズ。",
	price: "3500",
	status: "販売中",
	tag_list: "ポーチ",
	image: File.open('./app/assets/images/item1.jpg'),
	creater_id: "1",
	)

Item.create!(
	name: "コースター",
	body: "手織りした生地で作ったコースターです。",
	price: "1000",
	status: "販売中",
	tag_list: "コースター" "小物",
	image: File.open('./app/assets/images/item2.jpg'),
	creater_id: "1",
	)

Item.create!(
	name: "楊枝入れ",
	body: "手織りした生地で作った楊枝入れです。",
	price: "500",
	status: "販売中",
	tag_list: "楊枝入れ" "小物",
	image: File.open('./app/assets/images/item3.jpg'),
	creater_id: "1",
	)

Item.create!(
	name: "コースター",
	body: "手織りした生地で作ったコースターです。",
	price: "500",
	status: "販売中",
	tag_list: "コースター" "小物",
	image: File.open('./app/assets/images/item4.jpg'),
	creater_id: "1",
	)

Item.create!(
	name: "ブックカバー",
	body: "手織りした生地で作ったブックカバーです。文庫本サイズ。",
	price: "3500",
	status: "販売中",
	tag_list: "ブックカバー",
	image: File.open('./app/assets/images/item1.jpg'),
	creater_id: "1",
	)

# --creater2の作品--

Item.create!(
	name: "ストール",
	body: "極細の糸を利用して作った薄手ストール。透け感が美しいです。",
	price: "10000",
	status: "販売中",
	tag_list: "ストール",
	image: File.open('./app/assets/images/item6.jpg'),
	creater_id: "2",
	)

Item.create!(
	name: "マスク",
	body: "柔らかい麻糸でつくった生地をつかった手作りマスク",
	price: "1000",
	status: "販売中",
	tag_list: "マスク" "小物",
	image: File.open('./app/assets/images/item7.jpg'),
	creater_id: "2",
	)

Item.create!(
	name: "帽子",
	body: "麻糸を使った帽子。夏の日差し対策に。",
	price: "5000",
	status: "販売中",
	tag_list: "帽子",
	image: File.open('./app/assets/images/item8.jpg'),
	creater_id: "2",
	)

Item.create!(
	name: "小さな小物入れ",
	body: "手織りした生地で手のひらサイズの小物入れ。ピルケースや目薬など小物を収納できます。",
	price: "1500",
	status: "販売中",
	tag_list: "ポーチ",
	image: File.open('./app/assets/images/item4.jpg'),
	creater_id: "2",
	)

