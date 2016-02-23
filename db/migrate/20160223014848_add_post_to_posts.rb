class AddPostToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post_content, :string
    add_column :posts, :title, :string  
  end
end
