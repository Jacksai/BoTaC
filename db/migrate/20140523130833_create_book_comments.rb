class CreateBookComments < ActiveRecord::Migration
  def change
    create_table :book_comments do |t|
      t.references :user, index: true
      t.references :book, index: true
      t.text :content
      t.integer :grade

      t.timestamps
    end
  end
end
