# Preview all emails at http://localhost:3000/rails/mailers/manager_mailer
class ManagerMailerPreview < ActionMailer::Preview
  def manager_mail_preview
     ManagerMailer.email(User.first)
   end
end
