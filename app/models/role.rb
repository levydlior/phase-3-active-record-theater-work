class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |audition|
      audition.actor
    end
  end

  def locations
    self.auditions.map do |audition|
      audition.location
    end
  end

  def lead
    boop = self.auditions.find do |audition|
      audition.hired == true
    end
    if boop
      boop
    else
      "no actor has been hired for this role"
    end
  end

  def understudy
    under = self.auditions.filter do |audition|
      audition.hired == true
    end
    if under[1]
      under[1]
    else
      "no actor has been hired for understudy for this role"
    end
  end
end
