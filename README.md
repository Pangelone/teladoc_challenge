#############################################################################

#####

#

# PROBLEM 1

#

# Fill in function below

#

#

#############################################################################

#####

#

# Given a list of strings, and integer, i

# find all strings less then length i, then group

# and count the number of strings by their length

#

# example:

# strings = [ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ]

# i = 4

#

# output = { 1: 2, 2: 3, 3: 1 }

#

def filter_and_group(strings, i)
end
#############################################################################

#####

##

## PROBLEM 2

##

## In what ways can we refactor this code

##

##

#############################################################################

#####

# #app/models/user.rb

# class User < ActiveRecord::Record

# attr_accessor :first_name, :last_name

# end

#

# # app/views/users/show.html.erb

# @user = User.find(1)

# <p> <%= @user.full_name %> </p>

#

# # app/views/users/other_1.html.erb

# <p> <%= @user.first_nm %> <%= @user.last_nm %> </p>

#

# # app/views/users/other_2.html.erb

# <p> <%= @user.first_nm %> <%= @user.last_nm %> </p>

#

# # app/views/users/other_3.html.erb

# <p> <%= @user.first_nm %> <%= @user.last_nm %> </p>

#############################################################################

#####

##

## PROBLEM 3

##

## What are the dangers/inefficencies of this code below, how can we fix it

##

##

#############################################################################

#####

# - app/models/book.rb

class Book < ActiveRecord::Record
has_many :reviews
end
class Review < ActiveRecord::Record
belongs_to :user
belongs_to :book
end
class User < ActiveRecord::Record
has_many :reviews
end
#app/views/users/show.html.erb
@book = Book.find(1)
@book.reviews.each do |review|
<%= review.content.html_safe %> by <%= review.user.full_name %>
end
#############################################################################

#####

#

# PROBLEM 4

#

# Implement the function as described

#

#

#############################################################################

#####

class User < ActiveRecord::Record
has_many :reviews

#

# finds a user by id and return that user and its number of

# reviews

#

def self.find_and_count_reviews(user_id)
end
end
#############################################################################

#####

##

## PROBLEM 5

## write an rspec suite for this class and function

##

#############################################################################

#####

class Widget
def work(i)
if i % 2 == 0
if i % 5 == 0
return :even_and_five
else
return :even
end
else
return :odd
end
end
end
RSpec.describe Widget do
describe '#work' do
end
end
#############################################################################

#####

##

## PROBLEM 6

## write the numeronym function given the examples below

##

## e.g internationalization -> i18n

## ruby -> r2y

## java -> j2a

## coffee -> c4e

##

##

#############################################################################

#####

def numeronym(string)
end
