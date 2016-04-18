class BestRestaurantsDc::Restaurant
    attr_accessor :name, :food, :decor, :service, :price

    def self.top_25
        #scrape zagat and return restaurants based on data
        self.scrape_restaurants
    end

    def self.scrape_restaurants
        restaurants = []

        restaurants << self.scrape_zagat
        #go to zagat, find the product
        #extract the properties
        #instantiate a restaurant

        restaurants

    end

    def self.scrape_zagat

        doc = Nokogiri::HTML(open("https://zagat.com/best-restaurants/washington-dc"))

        #doc.css("div.main").collect do |rest|
        #    {
        #        :food => doc.css("li.score.food").text.strip
        #        :decor => doc.css("li.score.decor").text.strip
        #        :service => doc.css("li.score.service").text.strip
        #        :price => doc.css("li.score.cost").text.strip
        #    }
        #end
    end








        #restaurant = doc.css("p.title").map do |name|
        #    name.text
        #end

        #restaurant.name = doc.css("p.title")
        #restaurant.food = doc.css("li.score.food")
        #restaurant.decor = doc.css("li.score.decor")
        #restaurant.service = doc.css("li.score.service")
        #restaurant.price = doc.css("li.score.cost")

        restaurant
    end


        #restaurant.food = doc.css("li.score.food")
        #restaurant.decor = doc.css("li.score.decor")
        #restaurant.service = doc.css("li.score.service")
        #restaurant.price = doc.css("li.score.cost")

end
