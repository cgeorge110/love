class LoveMail < ActionMailer::Base
  def love_note(email)
  	@email = email
  	from_with_name = '\"#{email.from} via SomeLoveNotes\" <notes@somelovenotes.com>'
  	mail(to: email.getter_email, subject: "a love note from #{email.from}", from: from_with_name)
  end
end
