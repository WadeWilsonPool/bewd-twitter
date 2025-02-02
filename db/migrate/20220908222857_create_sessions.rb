class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :token
      t.integer :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
