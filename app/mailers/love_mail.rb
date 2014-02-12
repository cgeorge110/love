class LoveMail < ActionMailer::Base
  default from: "note@somelovenotes.com"

  def love_note(email)
  	@email = email
  	mail(to: email.getter_email, subject: "a love note from #{email.from}", from: '"#{email.from} via SomeLoveNotes" <notes@somelovenotes.com>')
  end
end
