require 'pry'
class Initial
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def grab_initials
    name.reduce("") do |initial, word|
      initial << word.chars.first
      initial
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  puts Initial.new(ARGV).grab_initials
end
