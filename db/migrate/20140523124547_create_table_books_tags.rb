class CreateTableBooksTags < ActiveRecord::Migration
  def up
    create_table 'books_tags' do |t|
      t.integer :book_id
      t.integer :tag_id
    end
  end

  def down
    drop_table 'books_tags'
  end
end
