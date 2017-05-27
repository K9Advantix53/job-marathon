class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.belongs_to :users
      t.belongs_to :postings
    end
  end
end
