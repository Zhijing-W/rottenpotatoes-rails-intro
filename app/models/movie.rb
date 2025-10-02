class Movie < ActiveRecord::Base

  def self.all_ratings
    Movie.distinct.pluck(:rating)
  end
  

  def self.with_ratings(ratings_list)
    if ratings_list.blank?
      return all
    else
      where(rating: ratings_list)
    end
  end
end
