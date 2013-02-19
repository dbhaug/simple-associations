module CustomersHelper
	def order_table_for_customer(customer)
		html="
		<table class='table table-striped'>"
		html+= "
			<thead>
				<tr>
					<th>Item</th>
					<th>Quantity</th>
					<th>Total</th>
				</tr>
			</thead>
			<tbody>"
		customer.orders.each do |x|
			if x.nil?
				html+="
				<tr>
					<td>No orders</td>
				</tr>"
			else
				html+="
				<tr>
					<td>#{Items.find_by_id(x.item_id)}</td>
					<td>#{x.quantity}</td>
					<td>#{x.total}</td>
				</tr>"
			end
		end	
		html+="
			</tbody
		</table>"
		
		html.html_safe
	end
end
