module OrdersHelper
	def convert_customer_name_to_id
		customer=Customer.find_by_name(self.customer_name)
		self.customer_id=customer.id unless customer.nil?
	end

	def customer_name(order)
		order.customer.name unless order.customer.nil?
	end

	def orders_for_customer(customer)
		customer.orders.each do |order|
			html="<tr>
    			<td>#{order.quantity}</td>
    			<td>#{order.item}</td>
    			<td>#{order.total}</td>
    			<td><%= link_to 'Show', order %></td>
    			<td><%= link_to 'Edit', edit_order_path(order) %></td>
    			<td><%= link_to 'Destroy', order, method: :delete, data: { confirm: 'Are you sure?' } %></td>
  			</tr>"
  			html.html_safe
  		end
	end
end