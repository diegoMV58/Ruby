# little secret, all classes are children of the superclass object

class Video
  #this counts as setter and getter, nice
  attr_accessor :minutes, :title
  #class variable, can be accessed from the object and their instances
  @@class_variable = "lmao"
  def initialize(name)
    #self equals 'this' in other languages, and can be written like this too 'class << self'
    self.title = "base movie title"
    puts "video Initialized"
    #this one a environment variable, can only be accessed from this object
    @name = name
  end
  def play
    puts @name
  end
  def stop
    #this means the method can receive block to execute
    yield
  end
  def pause

  end
  def self.funny

  end
end

#children class
class YouTubeVideo < Video
  attr_accessor :id
  def play
    p "youtube"
  end
end

class FacebookVideo < Video
  attr_accessor :likes
  #the children can override the parent methods, in other the super annotation adds steps to the parent method but doesn't override it
  def pause
    super
  end
  def play
    p "facebook"
  end
end


movie = Video.new("josh")
movie.title = "Jumanji"
puts movie.play

youtube = YouTubeVideo.new("jorge")
puts youtube.title

#little funny thing, you can use something called class method, that means that you can call directly from the class, not a instance
Video.funny

#polymorhpism
# multiple methods react differently to the same input or iteration

videos = [YouTubeVideo.new('juan'), FacebookVideo.new('peter')]

videos.each { |video| video.play }

#block sent to the method
movie.stop {puts "Stooooop!"}