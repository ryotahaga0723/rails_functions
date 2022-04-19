class UserMailer < ApplicationMailer
  def welcome
    @user = params[:user]
   mail(to: @user.email, subject: "登録完了") 
  end
end
