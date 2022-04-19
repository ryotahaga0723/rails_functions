class UserMailerJob < ApplicationJob
  queue_as :mailers

  def perform(id)
    @user = User.find(id)
    UserMailer.with(user: @user).welcome.deliver
  end
end
