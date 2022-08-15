class Users < ActiveRecord::Migration[6.1]
  def change
    
    t.string :username
    t.string :email
    t.string :password
    t.datetime
  end
end
