class LineItem < ApplicationRecord
  belongs_to :dish
  belongs_to :tray
  
  def total_price
    if valid_quantity_and_price?
      quantity.to_s.to_d * dish.price.to_s.to_d
    else
      0.0
    end
  end

  def valid_quantity_and_price?
    !quantity.to_s.strip.empty? && !dish.price.to_s.strip.empty?
  end
end
