class LineItem < ApplicationRecord
    belongs_to :snack
    belongs_to :cart
end
