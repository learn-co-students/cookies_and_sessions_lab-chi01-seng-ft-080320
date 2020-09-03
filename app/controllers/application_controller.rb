class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart

# if session[:cart] is nil, false, or undefined set it to an empty array.
# Otherwise set it to session[:cart], or in other words, do nothing. 

# session[:cart] || session[:cart] = []

# a ||= b
# is equivalent to
# a || a = b

  def cart
    session[:cart] ||= []
  end

end



