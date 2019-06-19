require 'pry'

class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  belongs_to :network
  
  def say_that_thing_you_say
    puts "#{self.name}, #{self.catchphrase}"
    binding.pry 
  end 
  
end