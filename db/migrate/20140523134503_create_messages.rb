class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :sender, index: true
      t.references :reciever, index: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
