class Tweet < ActiveRecord::Base
	belongs_to :note
<<<<<<< HEAD

	validates :to, length: { maximum: 15, too_long: "the maximum twitter handle is %{count} characters" }
	validates :from, length: { maximum: 15, too_long: "the maximum twitter handle is %{count} characters" }
=======
>>>>>>> 5c722712d0c26fd7248b0c96e2834c3a075a1f17
end
