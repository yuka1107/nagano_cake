class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  #新規登録の保存カラム
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana,
                                                       :last_name_kana, :email, :postal_code, :address,
                                                       :telephone_number])
  #ログイン時追加カラム
    devise_parameter_sanitizer.permit(:sign_in,keys: [:email])
  end
end
