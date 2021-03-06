ActiveAdmin.register Pokeca do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :image, :name, :detail, :price, :box_id, :genre_id, :rare_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:image, :name, :detail, :price, :box_id, :genre_id, :rare_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs 'ポケモンカード登録'do
      f.input :box, :as => :select, :member_label => :name
      f.input :genre, :as => :select, :member_label => :name
      f.input :rare, :as => :select, :member_label => :rarity
      f.input :name
      f.input :price
      f.input :image, :as => :file
      f.input :detail
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column '画像' do |pokeca|
      pokeca.image
    end
    column 'カード名' do |pokeca|
      pokeca.name
    end
    column '相場' do |pokeca|
      pokeca.price
    end
    column '詳細' do |pokeca|
      pokeca.detail
    end
    column '拡張ボックス名' do |pokeca|
      pokeca.box.name
    end
    column 'ジャンル' do |pokeca|
      pokeca.genre.name
    end
    column 'レアリティ' do |pokeca|
      pokeca.rare.rarity
    end
    actions
  end
end
