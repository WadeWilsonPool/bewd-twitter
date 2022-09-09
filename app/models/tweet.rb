class Tweet < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true

  validates :content, length: { maximum: 140 }, presence: true
end
