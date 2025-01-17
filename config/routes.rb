Rails.application.routes.draw do

resources :pubimgs
resources :pubmenus

  
get 'welcome/index'
  
root 'welcome#index'


devise_for :admin_users, ActiveAdmin::Devise.config
ActiveAdmin.routes(self)
  
devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords"
}


resources :welcome do
    collection do
      get "video", "allf9", "usage", "sitemap", "mail", "aboutus", "code", "respon", "pp"
end end


resources :users do
    collection do
      get "profile", "myshop", "mywallet"
end end


namespace :myashop do resources :myashops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end

namespace :myashop do resources :myashops do
                      resources :myamenucs
end end

namespace :myashop do resources :myamenucs do
                      resources :myamenus
end end

namespace :myashop do resources :myamenus do
                      resources :myfoods do
    member do
      get "foodimg"
    end
end end end

namespace :myashop do resources :myashops do
                      resources :myasmenucs
end end

namespace :myashop do resources :myasmenucs do
                      resources :myasmenus do
    member do
      get "menuline"
    end
end end end

namespace :myashop do resources :myashops do
                      resources :myadmenucs
end end

namespace :myashop do resources :myadmenucs do
                      resources :myadmenus
end end

namespace :myashop do resources :myadmenus do
                      resources :mydrinks
end end

namespace :myashop do resources :myashops do
                      resources :myatmenucs
end end

namespace :myashop do resources :myatmenucs do
                      resources :myatmenus
end end

namespace :myashop do resources :myatmenus do
                      resources :myatakeouts
end end


namespace :mybshop do resources :mybshops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end

namespace :mybshop do resources :mybshops do
                      resources :mybmenucs do
      member do
        get "subedit"
      end
end end end

namespace :mybshop do resources :mybshops do
                      resources :mybsmenucs do
      member do
        get "subedit"
      end
end end end

namespace :mybshop do resources :mybshops do
                      resources :mybequips do
      member do
        get "subedit"
      end
end end end

namespace :mybshop do resources :mybshops do
                      resources :mybstaffcs do
      member do
        get "subedit"
      end
end end end

namespace :mybshop do resources :mybstaffcs do
                      resources :mybstaffs do
      member do
        get "subedit"
      end
end end end

namespace :mycshop do resources :mycshops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end

namespace :mydshop do resources :mydshops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end


namespace :myeshop do resources :myeshops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end


namespace :myfshop do resources :myfshops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end


namespace :mygshop do resources :mygshops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end


namespace :myhshop do resources :myhshops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end


resources :acategories

resources :bcategories

resources :ccategories

resources :dcategories

resources :ecategories

resources :fcategories

resources :gcategories

resources :hcategories


resources :tops do
    resources :areas
end

resources :areas do
    resources :prefecs
end

resources :prefecs do 
    namespace :ashop do resources :ashops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end

namespace :ashop do resources :ashops do
                      resources :pubmenus
end end

namespace :ashop do resources :ashops do
                      resources :pubimgs
end end

namespace :ashop do resources :ashops do
                      resources :amenucs
end end

namespace :ashop do resources :amenucs do
                      resources :amenus
end end

namespace :ashop do resources :amenus do
                      resources :foods do
    member do
      get "foodimg"
    end
end end end

namespace :ashop do resources :ashops do
                      resources :asmenucs
end end

namespace :ashop do resources :asmenucs do
                      resources :asmenus do
    member do
      get "menuline"
    end
end end end

namespace :ashop do resources :ashops do
                      resources :admenucs
end end

namespace :ashop do resources :admenucs do
                      resources :admenus
end end

namespace :ashop do resources :admenus do
                      resources :drinks
end end

namespace :ashop do resources :ashops do
                      resources :atmenucs
end end

namespace :ashop do resources :atmenucs do
                      resources :atmenus
end end

namespace :ashop do resources :atmenus do
                      resources :atakeouts
end end


resources :prefecs do 
    namespace :bshop do resources :bshops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end

namespace :bshop do resources :bshops do
                      resources :bmenucs
end end

namespace :bshop do resources :bshops do
                      resources :bsmenucs
end end


resources :prefecs do 
    namespace :cshop do resources :cshops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end


resources :prefecs do 
    namespace :dshop do resources :dshops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end


resources :prefecs do 
    namespace :eshop do resources :eshops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end


resources :prefecs do 
    namespace :fshop do resources :fshops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end


resources :prefecs do 
    namespace :gshop do resources :gshops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end


resources :prefecs do 
    namespace :hshop do resources :hshops do

    member do
      get "contact", "access", "time", "info", "pub"
    end

end end end


namespace :asearch do resources :asshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end

namespace :asearch do resources :asshops do
                      resources :pubmenus
end end

namespace :asearch do resources :asshops do
                      resources :pubimgs
end end

namespace :asearch do resources :asshops do
                      resources :asmenucs
end end

namespace :asearch do resources :asmenucs do
                      resources :asmenus
end end

namespace :asearch do resources :asmenus do
                      resources :sfoods do
    member do
      get "foodimg"
    end
end end end

namespace :asearch do resources :asshops do
                      resources :assmenucs
end end

namespace :asearch do resources :assmenucs do
                      resources :assmenus do
    member do
      get "menuline"
    end
end end end

namespace :asearch do resources :assmenus do
                      resources :assub
end end

namespace :asearch do resources :asshops do
                      resources :adsmenucs
end end

namespace :asearch do resources :adsmenucs do
                      resources :adsmenus
end end

namespace :asearch do resources :adsmenus do
                      resources :sdrinks
end end

namespace :asearch do resources :asshops do
                      resources :atsmenucs
end end

namespace :asearch do resources :atsmenucs do
                      resources :atsmenus
end end

namespace :asearch do resources :atsmenus do
                      resources :astakeouts
end end


namespace :bsearch do resources :bsshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end

namespace :bsearch do resources :bsshops do
                      resources :bsmenucs
end end

namespace :bsearch do resources :bsshops do
                      resources :bssmenucs
end end


namespace :csearch do resources :csshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end


namespace :dsearch do resources :dsshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end


namespace :esearch do resources :esshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end


namespace :fsearch do resources :fsshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end


namespace :gsearch do resources :gsshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end


namespace :hsearch do resources :hsshops do

  member do
      get "contact", "access", "time", "info", "pub"
    end

end end



Rails.application.routes.draw do
  resources :pubimgs
  resources :pubmenus
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面
end

Rails.application.routes.draw do
  resources :pubimgs
  resources :pubmenus
  get  'index' =>'messages#index'
  post 'confirm' => 'messages#confirm'
  post 'done' => 'messages#done'
end

end