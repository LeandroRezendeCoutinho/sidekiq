# frozen_string_literal: true

require_relative './simple_worker.rb'

def run
  10_000.times do |n|
    SimpleWorker.perform_async n
  end
end
