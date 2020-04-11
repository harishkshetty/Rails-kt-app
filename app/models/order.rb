class Order < ApplicationRecord
  belongs_to  :user

  has_one :order_deliver_detail
  has_many :order_items_details

end
