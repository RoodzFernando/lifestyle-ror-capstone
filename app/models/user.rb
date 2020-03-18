class User < ApplicationRecord
    before_save :downcase_name
    validates :name, presence: true, length: {minimum: 5},
                uniqueness: true

    private
    def downcase_name
        self.name = name.downcase
    end
end
