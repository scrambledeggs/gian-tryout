class Tray < ApplicationRecord
  has_many :line_items
  has_many :dishes, through: :line_items
  
  def sub_total
    sum = 0
    line_items.each do |line_item|
      sum += line_item.total_price
    end
    sum
  end
end
