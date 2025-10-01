class Profile < ApplicationRecord
    has_one_attached :image
    validates :name, presence: true
    validates :detail, presence: true
    validates :image, presence: true
end
