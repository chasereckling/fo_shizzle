class String
  define_method(:shiz) do
    shiz_sentence = []
    sentence = self.split()
    sentence.each() do |word|
      if word.include?("s")
      shiz_sentence.push(word.gsub(/s/, "z"))
    else word.include?("S")
      shiz_sentence.push(word.gsub(/S/, "Z"))
  end
end
shiz_sentence.each() do |newword|
    if newword.chr() == "z"
    newword[0] = "s"
  elsif newword.chr() == "Z"
    newword[0] = "S"
  else
  newword.chr() == newword[0]
end
end
shiz_sentence.join(" ")
end
end
