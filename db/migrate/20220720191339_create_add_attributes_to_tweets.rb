class CreateAddAttributesToTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :add_attributes_to_tweets do |t|

      t.datetime
    end
  end
end
