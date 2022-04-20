class UserMailerJob < ApplicationJob
  queue_as :mailers
end
