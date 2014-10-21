class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.string :picture
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
