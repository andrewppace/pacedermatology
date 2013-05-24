class Contacter
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :name, :email, :content
  
  validates :name, presence: true
  validates :email, email: true
  validates :content, presence: true, length: {maximum: 5000}
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
  
  def send_message
    ::ContactMailer.website(self).deliver
  end
end
