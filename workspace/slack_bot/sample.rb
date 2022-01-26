require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load
module Clockwork
    every(3.minutes, 'test') do
        sample = SlackNotify::Client.new(webhook_url: ENV["URL"])
        sample.notify("送れたら成功")
        sample.notify("Another message", "#general")
    end
end
