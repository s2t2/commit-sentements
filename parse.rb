
require "sentimentalizer"
require "pry"

require "active_support/all"

#
#
#

class Sentiment
  def self.all
    ["POSITIVE", "NEGATIVE", "NEUTRAL"].map do |sentiment|
      {:face => "Sentiment::#{sentiment}".constantize, :name => sentiment.downcase }
    end
  end

  # @param [String] face
  # @example Sentiment.translate(":)")
  def self.find_by_face(face)
    all.find{|s| s[:face] == face }
  end
end

puts Sentiment.all
puts Sentiment.find_by_face(":)")


#
#
#

Sentimentalizer.setup

[
  "i am so happy",
  "i am so sad",
  "its sad to see you go",
  "its sad to see you go, but i'm the most happy i've ever been now that you are leaving",
  "you're the most horrible person I've ever met",
  "you're the most horrible person I've ever met, and I never wish to see you or speak to you ever again",
  "i'm angry",
  "i'm interested",
  "i'm interesting",
  "i'm satisfied",
  "i'm satisfied for now",
  "i'm satisfied, for now",
  "the mail arrives on tuesdays",
  "the mail was late today",
  "if the mail is late one more time, i'm going to be upset",
  "liars",
  "the dog smiles from ear to ear",
  "the cat smiles from ear to ear"
].each do |phrase|
  classification = JSON.parse(Sentimentalizer.analyze(phrase, true)).to_h
  #classification["sentiment"] = translate(classification["sentiment"])
  sentiment = Sentiment.find_by_face(classification["sentiment"])
  puts "#{classification["probability"].round(2)} -- #{sentiment[:name].upcase}"
end
