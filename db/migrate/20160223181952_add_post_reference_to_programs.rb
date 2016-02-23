class AddPostReferenceToPrograms < ActiveRecord::Migration
  def change
    add_reference :programs, :post, index: true, foreign_key: true
  end
end
