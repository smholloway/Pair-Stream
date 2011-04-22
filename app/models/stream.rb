class Stream < ActiveRecord::Base
  has_and_belongs_to_many :users
	has_many :posts
	has_many :links
end
