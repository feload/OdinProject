def caesar_cipher (str, shift)
  abc = ("a".."z").to_a

  str
    .chars
    .map do |c|
      if !abc.include?(c.downcase)
        c
      else
        index = (abc.rindex(c.downcase) + shift) - abc.size
        index += abc.size if index < 0

        if c == c.upcase
          abc[index].upcase
        else
          abc[index]
        end
      end
    end
      .join

end

puts caesar_cipher("What a string!", 5)
