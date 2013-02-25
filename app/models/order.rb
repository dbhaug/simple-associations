class Order < ActiveRecord::Base
  before_validation :convert_customer_name_to_id 
  attr_accessible :item, :quantity, :total, :customer_id, :item_id, :customer_name
  belongs_to :customer
  belongs_to :item
  validates :customer_id, :presence=> {:message=>"Customer name must be provided"}
  def convert_customer_name_to_id
	customer=Customer.find_by_name(self.customer_name)
	self.customer_id=customer.id unless customer.nil?
  end
end