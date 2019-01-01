class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :title
      t.string :genre
      t.string :content
      
      t.timestamps
    end
  end
end
