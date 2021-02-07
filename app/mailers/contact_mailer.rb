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

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.free_eval.subject
  #
  def free_eval(data)
    @name = data[:name]
    @age = data[:age]
    @email = data[:email]
    @phone = data[:phone]
    @fitness_goals = data[:fitness_goals]
    @past_injuries = data[:past_injuries]
    @date1 = data[:date1]
    @date2 = data[:date2]
    @how_did_you_hear_about_us = data[:how_did_you_hear_about_us]

    @data = data
    mail to: data[:email]
  end
end
