class MottrieubatrieuController < ApplicationController
  include CurrentCart
  before_action :set_cart
    def tatcasp
        if params[:query].present?
            @tatca = Product.where("loai_id = 1" ).search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @tatca = Product.where("loai_id = 1 ").all.paginate(page: params[:page], per_page: 10)
          end
    end

    def gia1
        if params[:query].present?
            @gia1 = Product.where(:price => 0..1000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @gia1 = Product.where(:price => 0..1000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def motba
        if params[:query].present?
            @motba = Product.where(:price => 1000000..3000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @motba = Product.where(:price => 1000000..3000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
        end
    end
    def batam
        if params[:query].present?
            @batam = Product.where(:price => 3000000..8000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @batam = Product.where(:price => 3000000..8000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def tammuoi
        if params[:query].present?
            @tammuoi = Product.where(:price => 8000000..10000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @tammuoi = Product.where(:price => 8000000..10000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def muoimuoilam
        if params[:query].present?
            @muoimuoilam = Product.where(:price => 10000000..15000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @muoimuoilam = Product.where(:price => 10000000..15000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def muoilamhaimuoi
        if params[:query].present?
            @muoilamhaimuoi = Product.where(:price => 15000000..20000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @muoilamhaimuoi = Product.where(:price => 15000000..20000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def haimuoihailam
        if params[:query].present?
            @haimuoihailam = Product.where(:price => 20000000..25000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @haimuoihailam = Product.where(:price => 20000000..25000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def hailambamuoi
        if params[:query].present?
            @hailambamuoi = Product.where(:price => 25000000..30000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @hailambamuoi = Product.where(:price => 25000000..30000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def bamuoibalam
      if params[:query].present?
          @hailambamuoi = Product.where(:price => 30000000..35000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
        else
          @hailambamuoi = Product.where(:price => 30000000..35000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
        end
  end
    def balambonmuoi
        if params[:query].present?
            @balambonmuoi = Product.where(:price => 35000000..40000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @balambonmuoi = Product.where(:price => 35000000..40000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def bonmuoibonlam
        if params[:query].present?
            @bonmuoibonlam = Product.where(:price => 40000000..45000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @bonmuoibonlam = Product.where(:price => 40000000..45000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
    def bonlamnammuoi
        if params[:query].present?
            @bonlamnammuoi = Product.where(:price => 45000000..50000000, :loai_id=>"1").search_name(params[:query]).paginate(page: params[:page], per_page: 10)
          else
            @bonlamnammuoi = Product.where(:price => 45000000..50000000, :loai_id=>"1").all.paginate(page: params[:page], per_page: 10)
          end
    end
end
