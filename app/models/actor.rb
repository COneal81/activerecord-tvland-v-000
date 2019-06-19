require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  
  def full_name
   name = "#{self.first_name} #{self.last_name}"
  end
  
  
  def list_roles
    characters.select(:name) - shows.select(:name)
    binding.pry
  end
  
end

