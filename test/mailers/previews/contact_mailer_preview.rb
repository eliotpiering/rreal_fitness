# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/contact_us
  def contact_us
    ContactMailer.contact_us
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/free_eval
  def free_eval
    ContactMailer.free_eval
  end

end
