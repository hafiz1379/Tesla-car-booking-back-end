# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Car.create(
    name: 'Car 1',
    model: 'Model A',
    discription: 'Description for Car 1',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8i-gKEMLlDE5EreF4Jt3ee2NZehNnSd3KgQ&usqp=CAU',
    finance_fee: 15000.50,
    total_amount: 25000.75,
    duration: 5
  )

Car.create(
    name: 'Car 2',
    model: 'Model B',
    discription: 'Description for Car 2',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoLaWxIEsgC4KN5h1cxl7ecJ8oamy7vgdWrw&usqp=CAU',
    finance_fee: 18000.75,
    total_amount: 28000.25,
    duration: 7
  )

Car.create(
    name: 'Car 3',
    model: 'Model C',
    discription: 'Description for Car 3',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeUVHrlDwpoDF-6wpIvJNZdguxp-upJDZYZA&usqp=CAU',
    finance_fee: 20000.0,
    total_amount: 30000.0,
    duration: 4
  )

Car.create(
    name: 'Car 4',
    model: 'Model D',
    discription: 'Description for Car 4',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBYoGbgZB-R-ofpnX1djSTYn4Ub63navcj8w&usqp=CAU',
    finance_fee: 22000.50,
    total_amount: 32000.75,
    duration: 6
  )

Car.create(
    name: 'Car 5',
    model: 'Model E',
    discription: 'Description for Car 5',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeTLVaAV0MZHMCzXPyLxGsCxX0jh1OUR5pZA&usqp=CAU',
    finance_fee: 19000.25,
    total_amount: 29000.50,
    duration: 8
  )