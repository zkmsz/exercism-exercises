class Luhn
  def self.valid?(string)
    string.delete!(" ")
    return false if string.length < 2 || string.match(/[^0-9]/)

    numbers = string.split("").map(&:to_i).reverse

    numbers.map!.with_index { |n, idx| idx.odd? ? n * 2 : n }
    numbers.map! { |n| n > 9 ? n - 9 : n }

    numbers.sum % 10 == 0
  end
end
