# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser

  attr_accessor :emails


def initialize(emails)
  @emails = emails
end

def parse

@emails_new = []
@emails = @emails.split(",")
  @emails.each do |email|
    @emails_new << email.split(" ")
  end
  @emails_new.flatten.uniq.delete_if{|item| item == ""}
end

end
