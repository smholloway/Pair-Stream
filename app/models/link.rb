class Link < ActiveRecord::Base
  belongs_to :stream
  belongs_to :user
end
