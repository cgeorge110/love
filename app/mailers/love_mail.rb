class LoveMail < ActionMailer::Base
  default from: "note@somelovenotes.com"

  def love_note(email)
  	@email = email
  	attachments.inline['8bit-heart.png'] = File.read("#{Rails.root}/app/assets/images/emails/8bit-heart.png"
  	attachments.inline['shadow.png'] = File.read("#{Rails.root}/app/assets/images/emails/shadow.png"
  	mail(to: email.getter_email, subject: "a love note from #{email.from}")
  end
end
