class AddTrangThaiDonHangToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :trang_thai_don_hang, :boolean
  end
end
