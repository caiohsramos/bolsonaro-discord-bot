# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

require 'dotenv/load'
require_relative 'lib/bolsonaro_quotes'

task :default do
  token = ENV.fetch('DISCORD_BOT_TOKEN')

  bolsonaro_quotes = BolsonaroQuotes.new(token)

  bolsonaro_quotes.run
end
