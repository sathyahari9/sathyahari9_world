class Article < ApplicationRecord
    has_one :category
    validates :title, :presence => true
    validates :content, :presence => true

    scope :alphabetical, -> { order('title') }
    scope :active, -> { where('active = ?', true) }
end
