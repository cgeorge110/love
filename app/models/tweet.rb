class Tweet < ActiveRecord::Base
	belongs_to :note

	validates :to, length: { maximum: 15, too_long: "the maximum twitter handle is %{count} characters" }
	validates :from, length: { maximum: 15, too_long: "the maximum twitter handle is %{count} characters" }
end
