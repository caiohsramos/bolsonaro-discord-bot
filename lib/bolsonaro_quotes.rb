# frozen_string_literal: true

require 'discordrb'
require 'yaml'

class BolsonaroQuotes
  def initialize(token)
    @token = token
    @quotes = YAML.load_file('lib/data.yml').fetch('quotes')
  end

  def run
    bot = Discordrb::Bot.new token: @token

    bot.message(containing: /bolsonaro/i) do |event|
      username = event.author.mention
      event.respond "#{username} #{@quotes.sample}"
    end

    bot.run
  end
end
