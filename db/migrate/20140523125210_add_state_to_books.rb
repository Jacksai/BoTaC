class AddStateToBooks < ActiveRecord::Migration
  def change
    add_column :books, :state, :integer
  end
end
