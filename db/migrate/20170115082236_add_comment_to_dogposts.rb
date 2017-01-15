class AddCommentToDogposts < ActiveRecord::Migration
  def change
    add_column :dogposts, :comment, :string
  end
end
