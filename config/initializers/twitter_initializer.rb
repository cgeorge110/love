require 'twitter'

#only temporary
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "JgBbdKrvxVURYPIfxPQq6g"
  config.consumer_secret     = "Gjiit0tSIFrqLHgySszTIyj1YwXJuQNpQDDXnxMIJY"
  config.access_token        = "2320232185-YlWLmbnwyvRen5aDnYsP1IrlkSmKPs1oAkFHRhx"
  config.access_token_secret = "wsjSE0uzGv4oAOau23IfmXidRLHVDWin9RuiHpINMIa6Y"
end

