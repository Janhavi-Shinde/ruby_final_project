require_relative '../config/environment'


class Scraper
    # attr_accessor :title
    @@titles = []
# def initialize 
# @@titles = []
# end
    def self.title
    @@titles.delete_at(1)
    @@titles.delete_at(1)
    @@titles.delete_at(-1)
    @@titles.delete_at(-1)
    @@titles.delete_at(-1)
    @@titles.uniq
    @@titles
    end

    def scrape_fandom
       
        wikipedia = Nokogiri::HTML(open("https://taylorswift.fandom.com/wiki/Reputation"))
                  
            wikipedia.css("table.tracklist tr td a").each do | anchor |
            @@titles << anchor.text
            end       
    # binding.pry
    end
end
reputation = Scraper.new
reputation.scrape_fandom
# puts reputation.title
# returning array of songs, but also some names


# def scrape_rep_songs
#     wikipedia = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Reputation_(album)#Songs"))

#     songs = wikipedia.css("div.track-listing tr td a").attribute("title").value #returning just first song

#     example = wikipedia.css("div.track-listing tr td").first
#     example_2 = wikipedia.css("div.track-listing tr").map do |tr| 
#         tr.css("td a").first
#     end
    
    
#     #songs is a string
#     # songs.each {| song|
#     # puts song}
    
#     binding.pry
# end
# scrape_rep_songs







#     def scrape_wikipedia
#     wikipedia = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_songs_by_Taylor_Swift"))
#     rep = wikipedia.css("tr td i a") 
#     only_rep = rep.select do | anchor | anchor.text == "Reputation" 
#         anchor.
#     end
#     rep_song_names = only_rep.css("tr th a").text
#     #only_rep is now an array
# binding.pry
#     end

    
# wikipedia.css("tr td i a").text("Reputation")

# scrape_wikipedia

