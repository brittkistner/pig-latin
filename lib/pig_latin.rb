module PigLatin

  module Translator

    # def self.translate(sentence)
    #   words = sentence.split(" ") #ignore punctuation
    #   translate_word = words.map {|word| translate_word(word)}
    #   translate_back_to_sentence = translate_word.join(" ")
    # end
    #check for word or string in one method?

    def self.translate_word(word)
      if !(word =~ /\A[^aeiouy]+/).nil? == true
        mini_word = word.gsub(/\A[^aeiouy]+/, '')
        mini_word + /\A[^aeiouy]+/.match(word)[0] + "ay"
      elsif !(word =~ /\A[aeiou]+/).nil? == true
        word + "way"
      elsif !(word =~ /\A[y]+/).nil? == true
        mini_word = word.gsub(/\A[y]/, '')
        mini_word + /\A[y]/.match(word)[0] + "ay"
      elsif !(word =~ /\A[^aeiou]+/).nil? == true
        mini_word = word.gsub(/\A[^aeiou]+/, '')
        mini_word + /\A[^aeiou]+/.match(word)[0] + "ay"
      end
    end
  end
end

