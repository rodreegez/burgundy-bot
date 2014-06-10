load 'twitter_auth.rb'
require 'tweetbot'

bot = TweetBot.configure do |config|
  config.response_frequency = 100

  config.respond_to_phrase "it's so damn hot" do |responses|
    responses << "Milk was a bad choice"
  end

  config.respond_to_phrase "Milk was a bad choice" do |responses|
    responses << "It's so damn hot!"
  end
end

bot.talk

