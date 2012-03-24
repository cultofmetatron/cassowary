class Photo < ActiveRecord::Base
  belongs_to :galleries

  attr_protected :gallery_id

end
