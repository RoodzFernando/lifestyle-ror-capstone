class Article < ApplicationRecord
    belongs_to :user, foreign_key: "author_id"
    has_one_attached :image
    has_one :category, foreign_key: "category_id"
    accepts_nested_attributes_for :category
    has_many :votes
    validates :title, presence: true, length: {maximum: 150}
    validates :text, presence: true
end
