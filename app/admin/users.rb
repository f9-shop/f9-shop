ActiveAdmin.register User, as: "MyInfo" do
  permit_params :email, :username, :password, :password_confirmation, :role

  index do
    selectable_column
    id_column
    column :role
    column :email
    column :username
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :username
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :username
      f.input :password
      f.input :password_confirmation

    end
    f.actions
  end

end
