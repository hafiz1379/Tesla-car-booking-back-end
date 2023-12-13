# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create([
    {name: "Admin", email: "admin@gamil.com", password: "Admin@123456", role: "admin"},
    {name: "User", email: "user@gamil.com", password: "User@123456", role: "user"}
])

Car.create([
    {name: "Tesla Roadster", color: "Red", description: "The Tesla Roadster is a battery electric four-seater sports car. It is capable of accelerating from 0 to 60 mph in 1.9 seconds.",
    year: 2021, finance_fee: 1000, option_to_purchase: 200000, total_amount_payable: 300000, image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1701521015/devSources/car1_xwz5qo.png", duration: 12},
    {name: "Model S", color: "Blue", description: "Model S is built from the ground up as an electric vehicle, with a high-strength architecture and floor-mounted battery pack for incredible occupant protection and low rollover risk.",
    year: 2022, finance_fee: 500, option_to_purchase: 100000, total_amount_payable: 150000, image: "https://res.cloudinary.com/dv1mouzbi/image/upload/v1701521022/devSources/car2_fsngei.png", duration: 10},
])