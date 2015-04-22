require('rspec')
require('shiz')

describe('String#shiz') do
# change 's' to 'z'
#except when 's' is the first letter of the word or capitalized
it("shiz takes a sentence and splits into an array") do
  expect(("this is").shiz()).to(eq("thiz iz"))
end
it("loops eeach word if word includes 's' it substitutes 'z'") do
  expect(("dogs cats").shiz()).to(eq("dogz catz"))
end
it("loops eeach word if word includes 'S' it substitutes 'Z'") do
  expect(("dogS catS").shiz()).to(eq("dogZ catZ"))
end
it("if first character of word is 'z' turn back into 's'") do
  expect(("zong").shiz()).to(eq("song"))
end
it("if first character of word is 'Z' turn back into 'S'") do
  expect(("Zong").shiz()).to(eq("Song"))
end
it("if first character of a word is not a 'z'or 'Z' return original letter") do
  expect(("car").shiz()).to(eq("car"))
  end

end
