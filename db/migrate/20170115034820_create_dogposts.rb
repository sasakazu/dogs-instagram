class CreateDogposts < ActiveRecord::Migration
  def change
    create_table :dogposts do |t|

      t.timestamps null: false
    end
  end
end
