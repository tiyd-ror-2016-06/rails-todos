class BuggyJob < ActiveJob::Base
  queue_as :default

  def perform message, error_rate=0.1
    if rand < error_rate
      raise "Forced error"
    end

    puts "#{message} (#{error_rate})"
  end
end
