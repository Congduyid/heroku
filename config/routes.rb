Rails.application.routes.draw do
  get 'charts/index'
  devise_for :nguoidungs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
    end

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  resources :loais
   get '/' => 'home#index'
  get '/contact' => 'contact#contact'
   get '/home' => 'home#index'

  get '/mottrieubatrieu' => 'mottrieubatrieu#index'
  
  get '/dienthoai' => 'mottrieubatrieu#tatcasp'
  get 'theogia/giacoban' => 'mottrieubatrieu#gia1'
  get 'theogia/motba' => 'mottrieubatrieu#motba'
  get 'theogia/batam' => 'mottrieubatrieu#batam'
  get 'theogia/tammuoi' => 'mottrieubatrieu#tammuoi'
  get 'theogia/muoimuoilam' => 'mottrieubatrieu#muoimuoilam'
  get 'theogia/muoilamhaimuoi' => 'mottrieubatrieu#muoilamhaimuoi'
  
  get 'theogia/haimuoihailam' => 'mottrieubatrieu#haimuoihailam'
  get 'theogia/hailambamuoi' => 'mottrieubatrieu#hailambamuoi'
  get 'theogia/bamuoibalam' => 'mottrieubatrieu#bamuoibalam'
  get 'theogia/balambonmuoi' => 'mottrieubatrieu#balambonmuoi'
  get 'theogia/bonmuoibonlam' => 'mottrieubatrieu#bonmuoibonlam'
  get 'theogia/bonlamnammuoi' => 'mottrieubatrieu#bonlamnammuoi'


  get '/phukien' => 'giaphukien#index'

  get 'theogia/gia_0_2' => 'giaphukien#gia_0_2' 
  get 'theogia/gia_2_4' => 'giaphukien#gia_2_4'
  get 'theogia/gia_4_6' => 'giaphukien#gia_4_6'
  get 'theogia/gia_6_8' => 'giaphukien#gia_6_8'
  get 'theogia/gia_8_10' => 'giaphukien#gia_8_10'
  
  get 'theogia/gia_10_12' => 'giaphukien#gia_10_12'
  get 'theogia/gia_12_14' => 'giaphukien#gia_12_14'
  get 'theogia/gia_14_16' => 'giaphukien#gia_14_16'
  get 'theogia/gia_16_18' => 'giaphukien#gia_16_18'
  get 'theogia/gia_18_20' => 'giaphukien#gia_18_20'
  get 'theogia/gia_20' => 'giaphukien#gia_20'
  resources :products do
  get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
end
