require 'twilio-ruby'

class Text

  ACCOUNT_SID = 'AC67ed3f1155873f0c355bf610e9ee5294'
  AUTH_TOKEN = '3193515e6b594fec970c5883c0551ae9'
  FROM = '+441380800022'

  attr_reader :body, :client

  def send_confirmation
    create_client
    create_body
    send_text
  end

  def create_client(api = Twilio::REST::Client)
    @client = api.new(ACCOUNT_SID, AUTH_TOKEN)
  end

  def create_body
    delivery_time = (Time.new + 3600).strftime("%R")
    @body = "Thank you! Your order was placed " + 
     "and will be delivered before #{delivery_time}."
  end

  def send_text
    client.account.sms.messages.create({
      :from => FROM,
      :to => '+447881236029',
      :body => @body})
  end

end