class Character < ActiveRecord::Base
  belongs_to :show
  has_many :actors
end