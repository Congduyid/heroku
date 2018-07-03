class ThongbaoMailer < ApplicationMailer
    default from: "nhanlc28081996@gmail.com"

    def khachhang(donhang)
        @order = donhang
        mail(to: @order.email, subject: 'Xác nhận đơn hàng')
        end

    def quanly(donhang)
        @order = donhang
        mail(to: @order.email, subject: 'Welcome to My Awesome Site') 
       end


end
