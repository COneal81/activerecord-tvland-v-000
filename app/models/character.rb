require 'pry'

class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  belongs_to :network
  
  def say_that_thing_you_say
    return self.name
    binding.pry 
  end 
  
end