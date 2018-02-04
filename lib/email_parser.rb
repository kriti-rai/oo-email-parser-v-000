# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
   emails_array = []
   @emails.split.collect do |email|
     emails_array << email.split(",")
   end 
    emails_array.flatten.uniq
	end

  # def parse
  #  @emails.delete!(",")
  #  @emails.split(" ").uniq
  # end

end
