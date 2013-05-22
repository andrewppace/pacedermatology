class Author < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true, length: {in: 1..255}
end
