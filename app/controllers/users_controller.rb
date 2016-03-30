class UsersController < ApplicationController
  layout "settings", only: [:settings]

  def settings
    @user = current_user
    params[:tab] = "account" if !params[:tab]
  end
end