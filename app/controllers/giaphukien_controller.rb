class GiaphukienController < ApplicationController

  include CurrentCart
  before_action :set_cart

	def index
        if params[:query].present?
            @tatcapk = Product.where(:loai_id => "2" ).search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @tatcapk = Product.where(:loai_id => "2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_0_2
        if params[:query].present?
            @gia_0_2 = Product.where(:price => 0..200000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_0_2 = Product.where(:price => 0..200000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_2_4
        if params[:query].present?
            @gia_2_4 = Product.where(:price => 200000..400000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_2_4 = Product.where(:price => 200000..400000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_4_6
        if params[:query].present?
            @gia_4_6 = Product.where(:price => 400000..600000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_4_6 = Product.where(:price => 400000..600000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_6_8
        if params[:query].present?
            @gia_6_8 = Product.where(:price => 600000..800000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_6_8 = Product.where(:price => 600000..800000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_8_10
        if params[:query].present?
            @gia_8_10 = Product.where(:price => 800000..1000000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_8_10 = Product.where(:price => 800000..1000000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_10_12
        if params[:query].present?
            @gia_10_12 = Product.where(:price => 1000000..1200000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_10_12 = Product.where(:price => 1000000..1200000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_12_14
        if params[:query].present?
            @gia_12_14 = Product.where(:price => 1200000..1400000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_12_14 = Product.where(:price => 1200000..1400000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_14_16
        if params[:query].present?
            @gia_14_16 = Product.where(:price => 1400000..1600000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_14_16 = Product.where(:price => 1400000..1600000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_16_18
        if params[:query].present?
            @gia_16_18 = Product.where(:price => 1600000..1800000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_16_18 = Product.where(:price => 1600000..1800000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia_18_20
        if params[:query].present?
            @gia_18_20 = Product.where(:price => 1800000..2000000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_18_20 = Product.where(:price => 1800000..2000000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

  	def gia_20
        if params[:query].present?
            @gia_20 = Product.where(:price => 2000000..10000000, :loai_id=>"2").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia_20 = Product.where(:price => 2000000..10000000, :loai_id=>"2").all.paginate(page: params[:page], per_page: 10)
          end
    end

end
