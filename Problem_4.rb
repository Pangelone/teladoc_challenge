#
# PROBLEM 4
#
# Implement the function as described
#
#
#############################################################################
#####

#Solution:


class User < ActiveRecord::Record
  has_many :reviews
  #
  # finds a user by id and return that user and its number of
  # reviews
  #
  def self.find_and_count_reviews(user_id)
    u = User.find(:user_id)
    r = u.reviews.count
    {
      user: u,
      reviews_count: r
    }
  end
end