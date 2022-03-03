class Isogram
  def self.isogram?(string)
    string = string.tr(" -", "").downcase
    string == string.split("").uniq.join
  end
end
