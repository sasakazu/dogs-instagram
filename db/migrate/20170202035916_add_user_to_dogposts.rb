class AddUserToDogposts < ActiveRecord::Migration
  def change
    add_reference :dogposts, :user, index: true, foreign_key: true
  end
end
