class AddUserFilds < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :document, :string
    add_column :users, :document_type, :string
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string
    add_column :users, :admin, :boolean, default: false
  end
end
