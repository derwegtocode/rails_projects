class AddForeignKeyToComments < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :comments, :users, column: :author, primary_key: :id
    add_foreign_key :comments, :posts, column: :post, primary_key: :id
  end
end
