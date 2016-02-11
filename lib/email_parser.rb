require 'pry'

class EmailParser
  def initialize(emails)
    @emails = emails
  end

  attr_accessor :emails

  def parse
    @emails.split(/[\s,]+/).uniq
  end
end

list = EmailParser.new("chris@me.com, lunar@me.com lle@me.com")