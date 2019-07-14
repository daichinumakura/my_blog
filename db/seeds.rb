# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = %w(婚活・妊娠・子育て 料理・グルメ ファッション・コスメ DIY・インテリア・暮らし 闘病・介護 娯楽・趣味 旅と地域 カップル・夫婦 ペット ビジネス マネーハック 芸能ファン 専門分野)

categories.each do |category|
  Category.create(name: category)
end