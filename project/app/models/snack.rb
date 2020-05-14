class Snack < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3 }
    has_many :line_items, dependent: :destroy
end
