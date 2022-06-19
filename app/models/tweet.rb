class Tweet < ApplicationRecord
  include Likeable
  belongs_to :user
  belongs_to :tweet, optional: true
  has_many :comments

  validates :body, length: { maximum: 240 }, allow_blank: false, unless: :tweet_id

  def tweet_type
    if tweet_id? && body?
      "quote-tweet"
    elsif tweet_id?
      "retweet"
    else
      "tweet"
    end
  end
end
