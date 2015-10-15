
gem "giphy", path: "/Users/ricardoparro/.rvm/gems/ruby-2.2.0/bin/giphy"
gem 'telegram-bot-ruby'
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
        when 'up breathing'

            bot.api.send_message(chat_id: message.chat.id, text: "Up Breathing:  with your body relaxed, slowly breathe in through your
                                 
                                 nose and then release it with a slightly longer breath out through your 
                                 
                                 mouth.
                                     
                                     The purpose of this breathing is to be as relaxed as possible, so the muscles 
                                 
                                 you use for breathing do not interfere with the working of the muscles of the 
                                 
                                 uterus and the uterus maintains an optimum level of oxygenation.  Use this 
                                 
                                 breath in the Up Stage (first stage) of labour during every surge to enable you 
                                 
                                 to remain relaxed and calm.
                                     
                                     You may like to imagine the sun rising as you breathe in and, as you breathe 
                                 
                                 out, the sun climbs to the highest point in the sky, so that your mind is thinking 
                                 
                                 ‘up’ as your body is drawing up.  Or you can imagine blowing bubbles as you 
                                 
                                 breathe out and, as you breathe in the bubbles float lightly upwards.  
                                     
                                     With this breathing and upwards visualisations, mind and body are working 
                                 
                                 together which is a powerful combination, so that you are working with your 
                                 
                                 body, and each surge is most efficient and comfortable.
                                     
                                     Practice this breathing for a few minutes twice a day with your birth partner 
                                 
                                 supporting you in the visualisations.")
        end
    end
end





