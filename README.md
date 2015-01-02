#Takeaway

##Problem Description

Write a Takeaway program.

Functionality:
* list of dishes with prices
* placing the order by giving:
	* the list of dishes
	* their quantities
	* a number that should be the exact total (if sum not correct => raise an error, else customer is sent a text with order status)

The text sending functionality should be implemented using Twilio API. Use twilio-ruby gem to access the API e.g. "Thank you! Your order was placed and will be delivered before 18:52". Use a Gemfile to manage your gems.

Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run However, if your Takeaway is loaded into IRB and the order is placed, the text should actually be sent Use Twilio with your "verified number" to send messages.

##User Scenario
