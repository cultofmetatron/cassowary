class Blog < ActiveRecord::Base
has_many :posts, dependent: :destroy

#attr_accessible :description

#attr_reader :view_count, :title
validates_uniqueness_of :title


end
