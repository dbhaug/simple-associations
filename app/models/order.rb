class Order < ActiveRecord::Base
  before_validation :convert_customer_name_to_id 
  attr_accessible :item, :quantity, :total, :customer_id, :item_id, :customer_name
  belongs_to :customer
  has_one :item
  validates :customer_id, :presence=> {:message=>"Customer name must be provided"}
end
