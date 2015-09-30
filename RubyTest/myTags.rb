require 'set'

class myDict
  def initialize
    @tagDict = {'NAME' => ['jack', 'jill'].to_set, 'NUM' => ['one', 'two', 'three', 'four', 'nine'].to_set}
  end

  def findKey(term)
    @tagDict.each do |key, value|
      if value.include? term
        return key
      else
        next
    end
  end
