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

#Solution:


def numeronym(string)
  "#{string.chars.first}#{string.length-2}#{string.chars.last}"
end

p numeronym('internationalization')