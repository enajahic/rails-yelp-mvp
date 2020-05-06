# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

restaurants_attributes = [
  {
    name: "Marios Pizza",
    address: "Steisstr, Germany",
    phone_number: "+49245678910",
    category: "italian",
    reviews_attributes: [
      {content: "Great napoletan pizza", rating: 5},
      {content: "pizza", rating: 5},
    ]
  },
  {
    name: "Thaichi",
    address: "Berlinstr, Germany",
    phone_number: "+498790000",
    category: "chinese",
    reviews_attributes: [
      {content: "Delicious!", rating: 5},
      {content: "Super", rating: 4},
    ]
  },
  {
    name: "Le micko",
    address: "Frenchstr, Germany",
    phone_number: "+492000678911",
    category: "french",
    reviews_attributes: [
      {content: "Delicious!", rating: 5},
      {content: "Super", rating: 4},
    ]
  },
  {
    name: "Pancackes and Wafels",
    address: "Wafflostr, Germany",
    phone_number: "+49888000",
    category: "belgian",
    reviews_attributes: [
      {content: "Delicious and sweety!", rating: 5},
      {content: "Super star", rating: 4},
    ]
  },
  {
    name: "Takimoto",
    address: "Freshstr, Germany",
    phone_number: "+4911112222",
    category: "japanese",
    reviews_attributes: [
      {content: "Delicious and yummyyy!", rating: 5},
      {content: "Super", rating: 4},
    ]
  }
]

restaurants_attributes.each do |restaurant_attributes|
  puts "Creating restaurant..."
  reviews_attributes = restaurant_attributes.delete(:reviews_attributes)
  restaurant = Restaurant.create!(restaurant_attributes)

  reviews_attributes.each do |review_attributes|
    review = Review.new(review_attributes)
    review.restaurant = restaurant
    review.save!
  end
end

puts "Finished!"