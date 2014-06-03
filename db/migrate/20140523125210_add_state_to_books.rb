class AddStateToBooks < ActiveRecord::Migration
  def change
    add_column :books, :state, :integer, default: 0
  end
end
