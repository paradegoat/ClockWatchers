class ManagerMailer < ApplicationMailer
  default from: "humphreys.geoff@gmail.com"
  def email manager
    @manager = manager
    mail(to: @manager.email, subject: 'Daily Overtime Request Email')
  end
end
