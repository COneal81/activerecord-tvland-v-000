class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  
  def full_name
   actor = "#{first_name} #{last_name}"
  end
  
end

