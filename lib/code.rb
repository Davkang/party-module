module PartyGoer
  #YOUR CODE GOES HERE
  attr_reader :drink_count

  def initialize
    @drink_count = 0
  end

  def drink
    if @drink_count < 3
      @drink_count += 1
      return true
    else
      return false
    end
  end

  def sing
    "Do you want to come to a party\n My friends picked me up in their truck at 11:30"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def invited?
    true
  end

  def self.included(base)
    return base.extend(PartyGoer)
  end
end

class PersonalizedHavocError < StandardError
  # def message
  #   "You should define this yourself!"
  # end
end
