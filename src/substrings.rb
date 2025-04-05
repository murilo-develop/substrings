def substrings(text, dictionary)
  word_hash = {}

  text
    .downcase
    .split(" ")
    .each do |word|
      y = 0
      until y >= word.length
        i = 1
        until i > (word.length - y)
          possible_word = word[y, i]
          if dictionary.include?(possible_word)
            word_hash[possible_word] = word_hash.fetch(possible_word, 0) + 1
          end
          i += 1
        end
        y += 1
      end
    end

  word_hash
end