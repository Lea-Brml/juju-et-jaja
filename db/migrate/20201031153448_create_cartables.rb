class CreateCartables < ActiveRecord::Migration[5.2]
  def change
    create_table :cartables do |t|

      t.string 'name'
      t.text 'short_desc'
      t.text 'long_desc'
      t.text 'matieres'
      t.float 'price'
      t.timestamps
    end
  end
end
