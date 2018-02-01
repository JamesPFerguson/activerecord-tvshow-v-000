class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    self.order("rating DESC").limit(1)[0]
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    self.order("rating").limit(1)[0]
  end

  def self.ratings_sum
    self.sum("rating")
  end

  def self.popular_shows
    self.where("rating > 5")
  end

end
