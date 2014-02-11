class Email < ActiveRecord::Base
	belongs_to :note
	validates :to, :presence => true
	validates :getter_email,   
            :presence => true,   
            :email => true
    validates :from, :presence => true
    validates :sender_email,   
            :presence => true,   
            :email => true
end
