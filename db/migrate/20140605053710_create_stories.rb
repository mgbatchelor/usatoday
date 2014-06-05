class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.references :source, index: true
      t.text :title
      t.text :description
      t.text :link
      t.text :guid
      t.boolean :permalink
      t.date :published_at

      t.timestamps
    end
  end
end
