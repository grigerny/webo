class AddNameToLink < ActiveRecord::Migration
  def change
    add_column :links, :name, :string
    add_column :links, :category_id, :integer
  end
end
