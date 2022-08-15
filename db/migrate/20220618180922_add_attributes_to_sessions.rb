class AddAttributesToSessions < ActiveRecord::Migration[6.1]
  def change
    add_column :token, :string
    add_foreign_key :user_id, :integer, index: true
    add_belongs_to :user

    t.datetime
  end
end
