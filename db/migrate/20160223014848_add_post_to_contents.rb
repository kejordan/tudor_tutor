class AddPostToContents < ActiveRecord::Migration
  def change
    add_column :contents, :content, :string
    add_column :contents, :title, :string  end
end
