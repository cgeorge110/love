class Message < ActiveRecord::Base


	serialize :fields, Hash

	# only rebuild the fields if the text has been changed
  before_save :build_fields, :if => lambda { |message| message.changed.include?('message') }

  def has_field?(string)
    key, number = FieldParsing.parse_field_string(string)
    return false unless self.fields[key] >= number
    return true
  end

  protected
  # When the MadLib text is changed, rebuild the hash of fields
  def build_fields
    # Empty the existing fields
    self.fields = {}

    # Build an array of all the future replaceable words
    array = message.scan(/\{[\w,\s-]+\}/).collect { |i| i.gsub(/[\{\}]/,'') }

    # Now build the new hash of fields, organized by word type (verbs, nouns, etc.)
    array.each do |field|
      key = field.downcase
      # Keep track of how many of each word type is in the text
      self.fields[key] = (self.fields[key].nil? ? 1 : self.fields[key] + 1)
    end
  end
end
