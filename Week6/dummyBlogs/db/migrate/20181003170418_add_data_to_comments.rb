class AddDataToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :body, :string
    add_column :comments, :post_id, :integer
    add_column :comments, :author, :string
  end
end
