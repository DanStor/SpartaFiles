class AddDataToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :title, :string
    add_column :posts, :body, :string
    add_column :posts, :author, :string
    add_column :posts, :date, :datetime
  end
end
