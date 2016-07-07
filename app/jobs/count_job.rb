class CountJob < ActiveJob::Base
  queue_as :default

  def perform n
    1.upto(n) do |i|
      system "say #{i}"
    end
  end
end
