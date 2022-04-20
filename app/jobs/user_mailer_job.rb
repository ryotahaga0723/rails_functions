class UserMailerJob < ApplicationJob
  queue_as :mailers

  def deliver(id)
    @user = User.find(id)
    UserMailer.with(user: @user).welcome.deliver
  end
end
