class BestRestaurantsDc::CLI

    def call
        list_restaurants
        info
        goodbye
    end

    def list_restaurants
        puts "Here are the top 25 rated restaurants in Washington, DC:"

        @restaurants = BestRestaurantsDc::Restaurant.top_25
        @restaurants.each do |r|
            puts r
        end
    end

    def info
      input = nil
      while input != "exit"
        puts "Enter the restaurant you want to know about:"
        input = gets.strip.downcase

        if input.to_i > 0
          the_restaurant = @restaurants[input.to_i-1]
          puts "Restaurant: #{the_restaurant.name} - Food Rating: #{the_restaurant.food}/30 - Decor Rating: #{the_restaurant.decor}/30 - Service Rating: #{the_restaurant.service}/30 - Price: #{the_restaurant.price}"
        elsif input == "list"
          list_restaurants
        else
          puts "Not sure what you want, type list or exit."
        end
      end
    end

    def goodbye
        puts "Come back when you can't decide where to eat!"

    end
end
