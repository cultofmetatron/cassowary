class Gallery < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many :photos, dependent: :destroy


end
