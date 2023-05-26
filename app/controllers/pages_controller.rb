class PagesController < ApplicationController
  def home
    current_user ? redirect_to(rooms_path) : redirect_to(new_user_session_path)
  end
end
