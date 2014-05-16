class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :author
      t.text :bio

      t.timestamps
    end
  end
end
