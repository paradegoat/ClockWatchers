class ManagerMailer < ApplicationMailer
  require 'sendgrid-ruby'
  include SendGrid

  default from: "humphreys.geoff@example.com"

  def email manager
    @manager = manager
    mail(to: @manager.email, subject: 'Daily Overtime Request Email')
  end
end
