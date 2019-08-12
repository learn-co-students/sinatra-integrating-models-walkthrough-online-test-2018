# Your TextAnalyzer model code will go here.

class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = text.split(' ')
    words.count
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    no_spaces = text.gsub(' ', '')
    letters = no_spaces.split('')
    histogram = letters.group_by { |v| v }.transform_values(&:size)
    histogram.max_by { |k, v| v }
  end
end
