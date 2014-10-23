class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :patrons, :through => :checkouts
end
