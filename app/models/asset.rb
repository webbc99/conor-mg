class Asset < ApplicationRecord
  belongs_to :portfolio_item

  has_attached_file :upload, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/
end
