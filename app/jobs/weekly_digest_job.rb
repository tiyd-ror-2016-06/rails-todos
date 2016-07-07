class WeeklyDigestJob < ActiveJob::Base
  queue_as :default

  # def perform user_id
  #   user = User.find_by user_id
  #   return unless user
  def perform user
    puts "Should send email to #{user.email}"
  end
end
