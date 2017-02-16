class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.references :user, index: true
      t.timestamps
    end
  end
end
