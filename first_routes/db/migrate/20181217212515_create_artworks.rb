class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title 
      t.string :image_url, uniqueness: true, presence: true
      t.integer :artist_id 

      # add_foreign_key :users, :artist

    end
  end
end
