ActiveAdmin.register Item do
  permit_params :user_id, :deleted_at
end
