require "pry-byebug"

LETTERS = 26

def shift_char(char,offset = 1)

  char_ord = char.ord
  if (65..90).include?(char_ord) || (97..122).include?(char_ord)
    unless (65..90).include?(char_ord + offset) || (97..122).include?(char_ord + offset) 
      char = char_ord + offset - LETTERS
    else 
      char = char_ord + offset
    end
  else
   char = char_ord
  end
  char.chr
end

def shift_string(string, offset)
  string = string.split("").map { |char| shift_char(char,offset)}
  string = string.join
end

shift_string("What a string!", 5)
