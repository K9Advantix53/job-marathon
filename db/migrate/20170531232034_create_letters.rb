class CreateLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |t|
      t.string 'company', null: false
      t.string 'position', null: false
      t.text 'cv', null: false
      t.string 'url'
      t.string 'comment', null: false
      t.string 'address', null: false

      t.timestamps
    end
  end
end
