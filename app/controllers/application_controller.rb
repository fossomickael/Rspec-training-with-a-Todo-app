class ApplicationController < ActionController::Base

  def authenticate
    redirect_to new_session_path unless signed_in?
  end

  def signed_in?
    current_user
  end

  def sign_in_as(email)
    session[:current_email] = email
    User.create(email: email) unless current_user
  end

  def current_user
    User.find_by_email(session[:current_email])
  end
end
