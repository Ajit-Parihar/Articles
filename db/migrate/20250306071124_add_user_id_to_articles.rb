class AddUserIdToArticles < ActiveRecord::Migration[7.2]
  def change
    # add_reference :articles, :user, null: false, foreign_key: true
    add_reference :articles, :user, foreign_key: true, null: true 
  end
end
