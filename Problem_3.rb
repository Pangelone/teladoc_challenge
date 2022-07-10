## PROBLEM 3
##
## What are the dangers/inefficencies of this code below, how can we fix it
##
##
#############################################################################
#####

#Solution:


# - app/models/book.rb
class Book < ActiveRecord::Record
  has_many :reviews
end
# - app/models/review.rb
class Review < ActiveRecord::Record
  belongs_to :user
  belongs_to :book
end
# - app/models/user.rb
class User < ActiveRecord::Record
  has_many :reviews

  def full_name
    "#{first_name} #{last_name}"
  end

  validates_presence_of :first_name, :last_name
end

#app/controllers/books_controller.rb
class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end
end

#app/views/books/show.html.erb
@book.reviews.each do |review|
  <%= review.content.sanitize %> by <%= review.user.full_name %>
end