class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.string :title, null: false
      t.string :qualifications
      t.string :description, null: false
      t.string :company, null: false
      t.string :location

      t.timestamps
    end
  end
end
