class Tweet < ApplicationRecord
    def change
        add_column :message, :content, :string
        add_foreign_key :user_id, :integer, index: true
        t.datetime
        add_belongs_to :user
        validates :user_id,  presence: true
        validates :content, length: { maximum: 140 }, presence: true
end
