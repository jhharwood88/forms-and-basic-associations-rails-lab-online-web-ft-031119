class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre

  def genre_name=(name)
     self.genre = Genre.find_or_create_by(name: name)
   end
 
   def genre_name
      self.genre ? self.genre.name : ""
   end

   def artist_name=(name)
     self.artist = Artist.find_or_create_by(name: name)
   end
 
   def artist_name
      self.artist ? self.artist.name : ""
   end

   def note_contents=(content)
   	
   end

   def note_contents
   end
 


end
