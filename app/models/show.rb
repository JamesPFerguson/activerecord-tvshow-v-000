class Show < ActiveRecord::Base

def self.highest_rating
  Show.max("rating")
end



end
