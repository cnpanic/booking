class AddBookToUser < ActiveRecord::Migration
  def change
    add_column :users, :book, :string
  end
end
