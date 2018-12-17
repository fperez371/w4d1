# == Schema Information
#
# Table name: artworks
#
#  id        :bigint(8)        not null, primary key
#  title     :string
#  image_url :string
#  artist_id :integer
#

class Artwork < ApplicationRecord
  belongs_to :artist,
  foreign_key: :artist_id,
  class_name: :User

  has_many :artwork_shares,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare

  has_many :artwork_viewers,
  through: :artwork_shares,
  source: :viewer

end
