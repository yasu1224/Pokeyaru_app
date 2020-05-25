ActiveAdmin.register Rare do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :rarity
  #
  # or
  #
  # permit_params do
  #   permitted = [:rarity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column 'レア度' do |rare|
      rare.rarity
    end
    actions
  end
end
