# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# create some example products
# create some example products
# create some example sales
Product.all.each do |product|
  User.all.each do |user|
    # create random sale quantity between 1 and 10
    quantity = rand(1..10)

    # create a new sale record for the product and user
    Sale.create!(
      product: product,
      quantity: quantity,
      user: user,
      payment_status: "pending"
    )
  end
end
