require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  
  def full_name
   name = "#{self.first_name} #{self.last_name}"
  end
  
  
  def list_roles
    list = []
    char = self.characters.collect do |character|
      character.name
    end
    sho = self.shows.collect do |show|
      show.name
    list = char.concat sho
    char.concat 
    
    a = [ 1, 2, 3 ]
a.concat( [ 4, 5 ] )
a                     
    # binding.pry
   end
  end
  
end

