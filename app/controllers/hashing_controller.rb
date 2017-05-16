require_relative './concerns/string_hashing'

class HashingController < ApplicationController
  ITEMS = %w(apple apricot banana cherry lump peach pear plum)

  def index
    @items = ITEMS
    @items_first_char_hashed = ITEMS.map(&:first_char_hash)
    @items_length_hashed = ITEMS.map(&:length)
    @items_xor_hashed = ITEMS.map(&:xor_hash)
    @items_djb2_hashed = ITEMS.map(&:djb2_hash)
    @capacity = 4
  end
end
