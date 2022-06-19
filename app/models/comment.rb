class Comment < ApplicationRecord
  include Likeable
  belongs_to :user
  belongs_to :tweet
end
