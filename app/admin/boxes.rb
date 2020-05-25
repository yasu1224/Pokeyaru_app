ActiveAdmin.register Box do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :place, :release
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :place, :release]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column 'ボックス名' do |box|
      box.name
    end
    column '発売エリア' do |box|
      box.place
    end
    column '発売日' do |box|
      box.release
    end
    actions
  end
end
