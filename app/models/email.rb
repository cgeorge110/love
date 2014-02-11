class Email < ActiveRecord::Base
	belongs_to :note
	validates :to, :presence => true
	validates :getter_email,   
            :presence => true,   
            :format => { :with => \b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b }
    validates :from, :presence => true
    validates :sender_email,   
            :presence => true,   
            :format => { :with => \b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b }
end
