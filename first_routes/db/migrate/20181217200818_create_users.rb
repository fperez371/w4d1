class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, presence: true, uniqueness: true
      t.string :email, presence: true, uniqueness: true
    end
  end
end
