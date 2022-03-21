class Acronym
  def self.abbreviate(phrase)
    abbreviation = ""
    phrase
      .upcase
      .gsub(/[^a-zA-Z0-9]/, " ")
      .split(" ")
      .each { |word| abbreviation += word[0] }
    abbreviation
  end
end
