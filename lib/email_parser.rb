# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  def initialize(str)
    @str = str 
  end

def parse
  @str.split(/,?\s/).uniq
end 

end