require 'telegram/bot'

class FrenchiesController < ApplicationController



    def index

        @frenchies = Giphy.search('french bulldog', {limit: 50, offset: 25})
        token = '109398535:AAFzTWO4AtPAnWOuhRsCN5YlfUavWOBaQ_4'
        Telegram::Bot::Client.run(token) do |bot|
            bot.listen do |message|
                case message.text
                when '/start'
                    bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
                when '/stop'
                    bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
                end
            end
        end


    end

end
