class Order < ApplicationRecord
  belongs_to  :user

  has_one :order_deliver_detail
  has_many :order_items_details

  accepts_nested_attributes_for :order_deliver_detail
  accepts_nested_attributes_for :order_items_details

end
