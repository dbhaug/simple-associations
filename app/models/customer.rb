class Customer < ActiveRecord::Base
  attr_accessible :contact, :name, :phone, :customer_id , :customer_name
  has_many :orders
end
