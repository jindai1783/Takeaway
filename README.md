#Takeaway

##Try It
To run from pry, first install _twilio-ruby_ using gem.
```ruby
require './lib/order.rb'
order = Order.new
order.go
```

##Problem Statement

Write a Takeaway program.

Functionality:
* list of dishes with prices
* placing the order by giving:
	- the list of dishes
	- their quantities
	- a number that should be the exact total (if sum not correct => raise an error, else customer is sent a text with order status)

The text sending functionality should be implemented using _Twilio API_. Use twilio-ruby gem to access the API e.g. "Thank you! Your order was placed and will be delivered before 18:52". Use a Gemfile to manage your gems.

Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run. However, if your Takeaway is loaded into IRB and the order is placed, the text should __actually be sent__. Use Twilio with your "verified number" to send messages.

##User Scenario

###1
1. A customer connects to the server via phone.
2. The customer views the menu.
3. After consideration, the customer decides to pick another restaurant.

###2
1. A customer connects to the server via phone.
2. The customer views the menu.
3. The customer decides to order.
4. Under prompt, the customer is asked to enter the dish number, followed by quantity.
5. The customer adds another dish.
6. The customer proceeds to checkout, the sum is shown to the customer.
7. The customer enters the total amount to transfer, and got it right, "Thank you! Your order was placed and will be delivered before 18:52" says the text.

###3
1. Repeat user scenario 2 from step 1 to step 6.
2. The customer enters the total amount to transfer, and got it wrong, "Ooops, you've transferred the wrong amount, please try it again." says the text.
3. The customer is upset, and decides to pick another restaurant.

##CRC

###Menu
Responsibility | Collaborators
--- | ---
Be printed | Order

###Order
Responsibility | Collaborators
--- | ---
View Menu | Menu
Add dish(es) | 
Delete dish(es) | 
Checkout | 
Make a real order | Text

###Text
Responsibility | Collaborators
--- | ---
Send text | 