class CreateActualites < ActiveRecord::Migration[5.2]
  def change
    create_table :actualites do |t|
      t.string "title"
      t.text "short_desc"
      t.text "long_desc"
      t.string "author"
      t.string "picture"
      t.timestamps
    end
  end
end
