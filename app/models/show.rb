class Show < ActiveRecord::Base

def highest_rating
  Show.max("rating")
end



end
