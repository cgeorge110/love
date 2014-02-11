class Email < ActiveRecord::Base
	belongs_to :note
	validates :to, :presence => true
	validates :getter_email,   
            :presence => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
    validates :from, :presence => true
    validates :sender_email,   
            :presence => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
end
