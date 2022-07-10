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
#


#Solution:

#app/models/user.rb
class User < ActiveRecord::Record
  attr_accessor :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end

#app/controllers/users_controller.rb
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end

# app/views/users/show.html.erb
<p> <%= @user.full_name %> </p>