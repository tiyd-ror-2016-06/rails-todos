class WaitJob < ActiveJob::Base
  queue_as :default

  def perform time
    sleep time
    puts "Okay!"
  end
end
