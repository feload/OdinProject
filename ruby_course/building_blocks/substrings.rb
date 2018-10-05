def substrings (words, dictionary)
  hash = Hash.new

  dictionary
  .each do |wd|

    if !hash.has_key?(wd)
      hash[wd] = 0
    end

    words
    .split()
    .each do |word|
      word.downcase!

      if word.include? wd
        hash[wd] = hash[wd] + 1
      end
    end

  end

  hash.delete_if {|k, v| v == 0 }
end