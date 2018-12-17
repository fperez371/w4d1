class AddUsername < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :string  
    remove_column :users, :email, :string

    add_column :users, :username, :string, uniqueness: true, presence: true

  end
end
