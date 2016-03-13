class AddFieldsToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :email, :string
    add_column :owners, :password, :string
    add_column :owners, :username, :string
  end
end
