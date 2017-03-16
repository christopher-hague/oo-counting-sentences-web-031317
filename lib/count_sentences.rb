require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    punc_marks = 0
    self.split("").each_with_index do |char, i|
      punc_marks += 1 if char == "." unless self[i - 1] == "."
      punc_marks += 1 if char == "!" unless self[i - 1] == "!"
      punc_marks += 1 if char == "?" unless self[i - 1] == "?"
    end
    punc_marks
  end
end
