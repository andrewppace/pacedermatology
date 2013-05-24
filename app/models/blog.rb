class Blog < ActiveRecord::Base
  attr_accessible :title, :body, :author_id
  
  belongs_to :author
  
  validates :title, presence: true, length: {in: 1..255}
  validates :body, presence: true
  validates :author_id, presence: true
  
  def synopsis(length = 100)
    Redcloth.new(self.body[0..length]).to_html
  end
  
  def full_body
    Redcloth.new(self.body).to_html
  end
end
