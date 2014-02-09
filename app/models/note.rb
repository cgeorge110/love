class Note < ActiveRecord::Base
  has_many :tweets
<<<<<<< HEAD
  has_many :emails
=======
>>>>>>> 5c722712d0c26fd7248b0c96e2834c3a075a1f17

  geocoded_by :ip_address,
  :latitude => :latitude, :longitude => :longitude
  after_validation :geocode

	# Insert an answer.  'string' is an unparsed string, value is the answer hash.
  def fill_field(string, value)
    return false unless message.has_field?(string)
    key, count = FieldParsing.parse_field_string(string)
    self.fields ||= {}
    self.fields[key] ||= []
    self.fields[key][count - 1] = value[:with]
    self.save
  end

  # Build the MadLib text with the solution answers filled in.
  def resolve
    resolution = ""
    my_fields = self.fields.clone # Keep the original answer hash intact
    my_fields.each_value { |i| i.reverse! }

    message.message.scan(/\{[\w,\s-]+\}|\w+|\W/) do |i|
      if (i =~ /\{[\w,\s-]+\}/)
        type = i.gsub(/[\{\}]/,'').downcase
        resolution += my_fields[type].pop
      else
        resolution += i
      end
    end

    return resolution
  end

end
