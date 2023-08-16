puts "Cleaning db..."
Restaurant.destroy_all

puts "Creating restaurants..."
10.times do
    resto = Restaurant.create!(
        name: Faker::Restaurant.name, 
        address: "Amsterdam",
        rating: rand(1..5),
        chef: Faker::TvShows::RuPaul.queen
    )
    

    5.times do
        Review.create!(
            content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
            rating: rand(1..5),
            restaurant: resto
        )
    end
end

puts "Done!"
