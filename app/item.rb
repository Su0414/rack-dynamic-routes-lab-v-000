require 'pry'
class Item
  attr_accessor :name, :price

  @@items = []

  def initialize(name,price)
    @name = name
    @price = price
  end

  def self.items
    @@items
  end

  def self.save
    @@items << self
  end

end
