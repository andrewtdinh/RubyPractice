require 'myTags'
require 'set'

class Taggerizer
  def initialize(inputString)
    @originalStr = inputString
    # The next two instance variables are sets because we want unique values inside
    @taggedTerms = Set.new
    @untaggedTerms = Set.new
    # The next variable is an array because we want the terms to be in the order we add them
    @replacedStr = []
  end
