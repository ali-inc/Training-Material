class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.new_pending.subject
  #
  def new_pending(profile)
    @greeting = "Hi,"
    @profile = profile
    mail to: "spartaglobal.info@gmail.com", subject: "Pending Profile Notification"
  end
  def new_response(profile)
    @greeting = "Hi"
    @profile = profile
    mail to: @profile.email, subject: "New Profile Response"
  end
end
