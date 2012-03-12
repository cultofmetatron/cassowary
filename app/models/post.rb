class Post < ActiveRecord::Base
belongs_to :blog
belongs_to :user
validates_presence_of :user_id, :blog_id, :title, :body
validates_numericality_of :published, less_than_or_equal_to: 1

before_create :set_create


  def set_create
    self.date_created = Time.now
    if published?
      self.date_published = Time.now
    end
    
  end
  
  def publish
    self.published = 1
  end
  
  def unpublish
    self.published = 0
  end
  
  def published?
    if self.published
      return true
    else
      return false
    end
  end

end
