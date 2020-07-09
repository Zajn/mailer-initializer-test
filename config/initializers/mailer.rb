Rails.application.configure do
  puts "--- ActionMailer::Base.deliver_later_queue_name before: #{ActionMailer::Base.deliver_later_queue_name} ---"
  puts "--- config.action_mailer.deliver_later_queue_name before: #{config.action_mailer.deliver_later_queue_name} ---"
  config.action_mailer.deliver_later_queue_name = 'default'
  puts "--- ActionMailer::Base.deliver_later_queue_name after: #{ActionMailer::Base.deliver_later_queue_name} ---"
  puts "--- config.action_mailer.deliver_later_queue_name after: #{config.action_mailer.deliver_later_queue_name} ---"

  # config.action_mailer.deliver_later_queue_name = 'default'
  # puts "--- ActionMailer::Base.deliver_later_queue_name after: #{ActionMailer::Base.deliver_later_queue_name} ---"
  # puts "--- config.action_mailer.deliver_later_queue_name after: #{config.action_mailer.deliver_later_queue_name} ---"
end
