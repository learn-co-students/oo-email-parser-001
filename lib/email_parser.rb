# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# http://rubular.com/

require 'pry'

class EmailParser

  # this sets and gets the emails
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    # binding.pry
    # ,\s takes into account the spave AND comma
    # (?<!\,)\s check for spaces that are preceded by commas in order to
    # just take into account the spaces alone
    # uniq method removes duplicates 
    @email.split(/\,\s|(?<!\,)\s/).uniq
  end
end

# regex: give me a comma followed by a space OR give me space that is NOT preceded by a comma
