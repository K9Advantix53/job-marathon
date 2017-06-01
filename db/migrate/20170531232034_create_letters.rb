class CreateLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |t|
      t.string 'company', null: false
      t.string 'position', null: false

      t.string 'greeting', null: false
      t.text 'paragraph1', null: false
      t.text 'paragraph2', null: false
      t.text 'paragraph3', null: false
      t.text 'paragraph4', null: false
      t.text 'paragraph5', null: false


      t.string 'url'
      t.string 'address', null: false

      t.timestamps
    end
  end
end
