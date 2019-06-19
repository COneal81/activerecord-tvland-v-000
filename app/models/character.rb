class Character < ActiveRecord::Base
  belongs_to :show
  has_one :actors
end