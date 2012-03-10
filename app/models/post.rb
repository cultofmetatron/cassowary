class Post < ActiveRecord::Base
belongs_to :blog, dependent: :destroy
belongs_to :user
validates_presence_of :user_id, :blog_id, :title, :body
validates_numericality_of :published, less_than_or_equal_to: 1

before_create :set_create


  def set_create
    self.date_created = Time.now
  end

end
