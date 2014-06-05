class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.text :name
      t.text :provider
      t.text :endpoint

      t.timestamps
    end
  end
end
