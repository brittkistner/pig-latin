require 'spec_helper'

describe 'PigLatin' do

  it "exists" do
    expect(PigLatin).to be_a(Module)
  end
end

describe 'Translator' do
  it "exists" do
    expect(PigLatin::Translator).to be_a(Module)
  end

  describe '.translate_word' do
    it "translates a word with a consonant as the first letter to pig latin" do
      expect(PigLatin::Translator.translate_word("hello")).to eq("ellohay")
    end

    it "translates a word with a vowel as the first letter to pig latin" do
      expect(PigLatin::Translator.translate_word("orange")).to eq("orangeway")
    end

    it "translates a word with 'y' as the first letter to pig latin" do
      expect(PigLatin::Translator.translate_word("yellow")).to eq("ellowyay")
    end
    #doesn't work for yay
  end

end


