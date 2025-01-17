ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :role
  #menu :parent => "Admin" , :if => proc {can?(:manage, AdminRole) }

  index do
    selectable_column
    id_column
    column :role
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role, as: :radio, :collection => [
        ['Menber', 'menber']
      ]
    end
    f.actions
  end

end
