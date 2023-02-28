class AddAuthorNameToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :author_name, :string
  end
end
