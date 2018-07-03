class ChartsController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :authenticate_nguoidung!
  $Alltotal = 0
  def index
    @param = params[:bdaymonth]
    if @param == ""
      respond_to do |format|
        format.html { redirect_to charts_index_path, notice: "Bạn chưa nhập tháng năm." }
      end
    end
    if @param != nil
      @month = @param.split("-")[1]
      @year = @param.split("-")[0]
      @orders = Order.where("EXTRACT(month FROM created_at) = ? AND EXTRACT(year FROM created_at) = ? AND trang_thai_don_hang = true", "#{@month}", "#{@year}").order(created_at: :desc)
      $Alltotal = 0
      if params[:bdaymonth] != ""
        @orders.each { |order| $Alltotal += order.total }
        return $Alltotal
      end
    end
end
end
