Rails.application.routes.draw do

  controller :test, scope: :test do
    get 'forms/:form_id/:entry_id', action: :show_form, as: :form
    post 'forms/:form_id/:entry_id', action: :post_form
  end

end
