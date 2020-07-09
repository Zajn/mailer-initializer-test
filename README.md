# Reproduction Steps

1. Run `rails c`
2. Verify that `ActionMailer::Base.deliver_later_queue_name` reports a value of `mailers` both before and after setting
   the config variable.
3. Verify that `config.action_mailer.deliver_later_queue_name` reports a value of `` before, and `default` after setting
   the config variable.
4. Uncomment the commented-out part of `config/initializers/mailer.rb`, and comment out or delete the existing code.
5. Stop spring `bin/spring stop` to ensure that the environment is reloaded
6. Run `rails c` again
7. Verify that both `ActionMailer::Base.deliver_later_queue_name` and `config.action_mailer.deliver_later_queue_name`
   return values of `default`.
