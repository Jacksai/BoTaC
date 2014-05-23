class CreateBookShelfPositions < ActiveRecord::Migration
  def change
    create_table :book_shelf_positions do |t|
      t.references :user, index: true
      t.references :book, index: true
      t.integer :status

      t.timestamps
    end
  end
end
