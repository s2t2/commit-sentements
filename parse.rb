
require "sentimentalizer"

class Analyzer
  def initialize
    Sentimentalizer.setup
  end

  def process(phrase)
    Sentimentalizer.analyze phrase
  end
end

analyzer = Analyzer.new
[
  "i am so happy",
  "i am so sad",
  "its sad to see you go",
  "its sad to see you go, but i'm the most happy i've ever been now that you are leaving",
  "you're the most hoorible person I've ever met",
].each do |phrase|
  s = analyzer.process(phrase)
  puts s.to_json
end
