require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  
  def full_name
   name = "#{self.first_name} #{self.last_name}"
  end
  
  
  def list_roles
    char = self.characters.collect do |character|
      character.name
    end
    sho = self.shows.collect do |show|
      show.name
    
    return "#{char} - #{sho}"
    # binding.pry
   end
  end
  
end

