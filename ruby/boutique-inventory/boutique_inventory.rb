class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name] }.compact.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.select { |item| item[:name] == name }[0].dig(:quantity_by_size)
  end

  def total_stock
    total = 0
    @items.each { |item| total += item[:quantity_by_size].values.sum }
    total
  end

  private

  attr_reader :items
end
