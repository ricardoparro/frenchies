
gem "giphy", path: "/Users/ricardoparro/.rvm/gems/ruby-2.2.0/bin/giphy"
gem 'telegram-bot-ruby'
gem "pinterest", path: "/Users/ricardoparro/.rvm/gems/ruby-2.2.0/bin/pinterest"
require 'telegram/bot'
require 'giphy'


Giphy::Configuration.configure do |config|
    config.api_key = 'dc6zaTOxFJmzC'
end


@frenchies = Giphy.search('french bulldog', {limit: 50, offset: 25})
token = '109398535:AAFzTWO4AtPAnWOuhRsCN5YlfUavWOBaQ_4'
Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
        case message.text
        when '/start'
            bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
        when '/stop'
            bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
        when 'good morning'
            bot.api.send_message(chat_id: message.chat.id, text: "Good morning!")

        end
    end
end
