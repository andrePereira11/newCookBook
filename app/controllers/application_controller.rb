class ApplicationController < ActionController::Base
  #Configuração do I18n
  # around_action :switch_locale
  
  # def switch_locale(&action)
  #   locale = params[:locale] || I18n.default_locale
  #   I18n.with_locale(locale, &action)
  # end

end
