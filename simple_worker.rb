# frozen_string_literal: true

require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0' }
end

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0' }
end

class SimpleWorker
  include Sidekiq::Worker

  def perform(num)
    puts "Number is #{num}"
  end
end
