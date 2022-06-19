class AddTweetIdToTweets < ActiveRecord::Migration[7.0]
  def change
    add_column :tweets, :tweet_id, :integer
  end
end
