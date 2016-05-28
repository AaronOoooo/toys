<h1> Nina's Toybox</h1>

<h2><%= @toy.product %></h2>
<h2><%= @toy.sale_message %></h2>
<h3><%= @toy.cost %></h3>
<h5>Tax: <%= number_to_currency(@toy.tax) %></h5>
<h5>Total Cost:<%= number_to_currency(@toy.total) %></h5>

<h6>Amount in stock:<%= @toy.quantity_in_stock %></h6>


<h4>Features</h4>

<% @toy.features.split(', ').each do |feature| %>
<li><%= feature %>>
<% end %>
</ 

<h3><%= @toy.features %></h3>

<h5><%= link_to "Delete", "/toys/#{@toy.id}", method: :delete %></h5> 
<h5><%= link_to 'Home', "/" %></h5>