class Loai < ApplicationRecord
    has_many :products
    validates :loaihang, presence: {message: "không được để trống"}
end