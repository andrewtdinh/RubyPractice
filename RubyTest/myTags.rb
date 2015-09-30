require 'set'

class myDict
  def initialize
    @tagDict = {'NAME' => ['jack', 'jill'].to_set, 'NUM' => ['one', 'two', 'three', 'four', 'nine'].to_set}
  end

  # Method to search for a term in the dictionary and return the key if found
  def findKey(term)
    @tagDict.each do |key, value|
      if value.include? term
        return key
      else
        next
      end
    end
  end

  # Method to update the instance variable tagDict.  The key determines which set to add the term to.
  def addTag(key, tag)
    if @tagDict.has_key? key
      @tagDict[key].add tag
    else
      @tagDict[key] = [tag].to_set
    end
  end
