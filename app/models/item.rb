class Item < ApplicationRecord
    belongs_to :list
    validates :content, presence: true
    validates :parent, presence: true
end