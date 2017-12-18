
class Slideshower::Search
attr_accessor :pictures, :name
  def self.search
    puts "Pictures of:"
    subject = gets.strip
@pictures = "https://www.pexels.com/search/#{subject}"
puts @pictures
  end

def self.scrape

doc = Nokogiri::HTML(open("#{@pictures}"))

picture = self.new
picture.name = doc.search(".photos .photo-item a")
binding.pry
picture
end


end
