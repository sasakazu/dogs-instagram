class AddImageToDogpost < ActiveRecord::Migration
  def change
    add_column :dogposts, :image, :string
  end
end
