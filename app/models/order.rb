class Order < ApplicationRecord
   has_many :line_items, dependent: :destroy
   belongs_to :user
   enum status: %i[pending on_process paid delivered]
end
