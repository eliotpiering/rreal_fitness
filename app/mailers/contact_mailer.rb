class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_us.subject
  #
  def contact_us
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def confirm(data)
    @data = data

    mail to: data[:email], subject: "Thanks for signing up for a free eval."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.free_eval.subject
  #
  def free_eval(data)
    @data = data
    @name = data[:name]
    @email = data[:email]

    mail to: data[:email], subject: "New Free Eval Client"
  end
end
