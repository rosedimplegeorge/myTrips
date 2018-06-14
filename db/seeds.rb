Trip.destroy_all
Album.destroy_all



sydney = Trip.create!(name: "Sydney", story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

album = Album.create!(
title:"Sydney",
photo_url:"https://i.imgur.com/d9XBfpj.jpg", 
trip_id: sydney.id)


canada = Trip.create!(name: "Canada", story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

    album = Album.create!(
    title:"Canada",
    photo_url:"https://i.imgur.com/JKYIG6y.jpg", 
    trip_id: canada.id)

puts "DB Seeded"
