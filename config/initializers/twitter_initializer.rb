require 'twitter'

#only temporary
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "<%= ENV['TWITTER_CONSUMER_KEY'] %>"
  config.consumer_secret     = "<%= ENV['TWITTER_CONSUMER_KEY'] %>"
  config.access_token        = "<%= ENV['TWITTER_CONSUMER_KEY'] %>"
  config.access_token_secret = "<%= ENV['TWITTER_CONSUMER_KEY'] %>"
end

