class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.references :author
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end
