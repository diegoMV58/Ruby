# little secret, all classes are children of the superclass object

class Video
  #this counts as setter and getter, nice
  attr_accessor :minutes, :title

  def initialize(name)
    self.title = "base movie title"
    puts "video Initialized"
    #this one a environment variable
    @name = name
  end
  def play
    puts @name
  end
  def stop

  end
  def pause

  end
end

#children class
class YouTubeVideo < Video
  attr_accessor :id
end

class FacebookVideo < Video
  attr_accessor :likes
  #the children can override the parent methods, in other the super annotation adds steps to the parent method but doesn't override it
  def pause
    super
  end
end


movie = Video.new("josh")
movie.title = "Jumanji"
puts movie.play

youtube = YouTubeVideo.new("jorge")
puts youtube.title
