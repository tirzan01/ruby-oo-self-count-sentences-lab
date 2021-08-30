require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    split_sentence = [self]
    split_sentence = split_sentence.map{ |sentence| sentence.split('.') }.flatten
    split_sentence = split_sentence.map{ |sentence| sentence.split('!') }.flatten
    split_sentence = split_sentence.map{ |sentence| sentence.split('?') }.flatten
    split_sentence.reject { |word| word.length == 0 }
    split_sentence.length
  end
end