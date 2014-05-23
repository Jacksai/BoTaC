class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.references :author, index: true
      t.text :description

      t.timestamps
    end
  end
end
