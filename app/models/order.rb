class Order < ApplicationRecord
    has_many :line_items, dependent: :destroy

    validates :name,:diachi, :email, :sdt, presence: {message: ": không được để trống"}
    validates :name, length: { in: 0..50, too_long: " :quá dài (nhiều nhất 50 ký tự)"} 
    validates :diachi, length: { in: 5..200, too_short: " :quá ngắn (ít nhất 5 ký tự)", too_long: " :quá dài (nhiều nhất 200 ký tự)"}
    validates :sdt, length: { in: 8..13, too_short: " :quá ngắn (ít nhất 8 số)", too_long: " :quá dài (nhiều nhất 13 số)"}
    validates :sdt, numericality: {greater_than_or_equal_to: 0.01}

    validates :ghichu, length: { in: 0..10000, too_long: " :quá dài (nhiều nhất 10.000 ký tự)"}

    def add_line_items_from_cart(cart) cart.line_items.each do |item|
        item.cart_id = nil
              line_items << item
        end end

end
