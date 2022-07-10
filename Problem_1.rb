# PROBLEM 1
#
# Fill in function below
#
# #
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
# def filter_and_group2(strings, i)
#   output =  {}
#   strings.each do |s|
#     if s.length < i
#       output[s.length] ||= 0 
#       output[s.length] += 1
#     end
#   end
#   output.sort.to_h
# end


#Solution:

def filter_and_group(strings, i)
  output =  {}
  (0..strings.length).each do |idx|
    idx < i && 
      output[idx] = strings.count { |st|  st.length == idx }
  end
  output
end

p filter_and_group([ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ], 4)