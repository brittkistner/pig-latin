module PigLatin

  module Translator

    # def self.collect_word(word)
    # end

    def self.translate_word(word)
      if !(word =~ /\A[^aeiou]+/).nil? == true
        mini_word = word.delete(/\A[^aeiou]+/.match(word)[0])
        mini_word + /\A[^aeiou]+/.match(word)[0] + "ay"
      elsif !(word =~ /\A[aeiou]+/).nil? == true
        word + "way"
      elsif !(word =~ /\A[y]+/).nil?
        mini_word = word.delete(/\A[y]+/.match(word)[0])
        mini_word + /\A[aeiou]+/.match(word)[0] + "ay"
      end
    end
  end
end

