require 'myTags'
require 'set'

class Taggerizer
  @tags = myDict.new()

  def initialize(inputString)
    @originalStr = inputString
    # The next two instance variables are sets because we want unique values inside
    @taggedTerms = Set.new
    @untaggedTerms = Set.new
    # The next variable is an array because we want the terms to be in the order we add them
    @replacedStr = []

    # Convert everything in the string to lower case and split into list of terms
    terms = @originalStr.downcase.split
    terms.each do |term|
      foundKey = getDictKey(term)
      # If a tag is found in our tag dictionary:
      if foundKey
        # We add the search term into the set of tags
        @taggedTerms.add(term)
        # We add the returned key to the list of replaced string
        @replacedStr.push(foundKey)
      else
        # Else we just add the search term to the list of replaced string
        @replacedStr.push(term)
        # And also add the search term into the set of non-tags
        @untaggedTerms.add(term)
      end
    end
  end

  # This will be used later to search for and get the key in tag dictionary
  def getDictKey(term)
    @tags.findKey(term)
  end

  # This method will return the original string
  def getOrinalStr
    @originalStr
  end

  # This method will return the non-tag terms
  def getUntaggedStr
    @untaggedTerms.join(' ')
  end

  # This method will return the tag terms
  def getTagStr
    @taggedTerms.join(' ')
  end

  # This method will return key-substituted string
  def getSubStr
    @replacedStr.join(' ')
  end

  # This method will add a tag to a key-value pair and then re-initialize the object
  def addTagToDict(key, tag)
    @tags.addTag(key, tag)
    self.initialize(@originalStr)
  end
end
