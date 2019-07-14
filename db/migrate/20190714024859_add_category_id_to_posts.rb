class AddCategoryIdToPosts < ActiveRecord::Migration[5.2]
  def change
  add_reference :posts, :category, foreign_key: true, index: true, after: :body
  end
end