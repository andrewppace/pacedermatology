
class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :created_at
  
  belongs_to :author
  
  validates :title, presence: true, length: {in: 1..255}
  validates :body, presence: true
  validates :author_id, presence: true
  
  def synopsis
    words = self.body.split(" ")[0..50]
    ::RedCloth.new(words.join(" ") + '...').to_html
  end
  
  def full_body
    ::RedCloth.new(self.body).to_html
  end
end
