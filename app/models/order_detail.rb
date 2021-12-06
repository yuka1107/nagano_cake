class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :item

  validates :item_id, :order_id, :amount, :price,
            presence: true
  validates :price, :amount, numericality: { only_integer: true }
  
  enum making_status: { not_startable: 0, waiting_for_production: 1,
                        in_production: 2, commplete: 3}
end
