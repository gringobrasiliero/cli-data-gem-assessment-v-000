
class Slideshower::Photos

def self.slideshow
x = 0
  puts
  puts "Displaying Slideshow of #{Slideshower::Search.subject}photos."
  puts

  Photo::all.each do |i|

if i.name == nil || i.name.value == ""
  puts "#{Slideshower::Search.subject.capitalize}#{x+=1}"
else
    puts i.name
end
    puts "http://www.pexels.com#{i.url}"
    puts
    sleep(3)
  end
end

def self.list
x = 0
puts
puts "Displaying List of #{Slideshower::Search.subject}photos."
puts

   Photo::all.each do |photo| #=> <Objectx20289498403 @name=dog @url: http222kdls >
    if x > 4
      break
    end
     if photo.name == nil || photo.name.value == ""
       puts "#{Slideshower::Search.subject.capitalize}#{x+=1}"
     else
         puts photo.name
     end

    puts "http://www.pexels.com#{photo.url}"
    puts

    
      end
end

end #of slideshower
