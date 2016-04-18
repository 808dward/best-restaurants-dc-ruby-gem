How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects.
8. program



- A command line interface for the top 25 restaurant ratings in DC, according to ZAGAT.


Show a list of restaurants

1. Fiora
2. Cordouroy
3. Rasika
4. etc.....

Which product do you want to learn more about?

1

What is a restaurant?

A restaurant has a name
A restaurant has a price
A restaurant has scores




from cli.rb:

- #{restaurant.food} - #{restaurant.decor} - #{restaurant.service} - #{restaurant.price} - #{restaurant.what_to_order}"


, :food, :decor, :service, :price, :what_to_order




from restaurant.rb:

restaurant.food = doc.search("li.score.food").text.strip
restaurant.decor = doc.search("li.score.decor").text.strip
restaurant.service = doc.search("li.score.service").text.strip
restaurant.price = doc.search("li.score.price").text.strip


    # my problem = i need scrape to output all 25 restaurant names / scores / price
    my issue = with my current setup, i can only get a single output with all 25 at the same time



    # binding.pry
    #restaurant = self.new

    my_instances = {}


    restaurant_top25 = doc.css(".title")


    restaurant_top25.each do |e|
        my_restaurant = restaurant_top25.new(e)

        my_instances[e] = my_restaurant
