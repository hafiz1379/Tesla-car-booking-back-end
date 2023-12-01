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
    {name: "Car 1", model: "Model 1", color: "Black", year: 2021, finance_fee: 1000, option_to_purchase: 2000, total_amount_payable: 3000, image: "https://www.audi.com/content/dam/gbp2/experience-audi/models-and-technology/production-models/a4/my2021/1920x1080-gal-prop-tx/1920x1080_desktop_A4_191001.jpg", duration: 12},
    {name: "Car 2", model: "Model 2", color: "White", year: 2022, finance_fee: 1500, option_to_purchase: 2500, total_amount_payable: 3500, image: "https://www.bmw.com/content/dam/bmw/marketBMWCOM/bmw_com/categories/overview/3-series-sedan/2019/design/BMW-3-Series-Sedan-Design-Teaser-Desktop.jpg", duration: 10},
])