class Article < ApplicationRecord
    belongs_to :user, foreign_key: "author_id"
    has_one_attached :image
end
