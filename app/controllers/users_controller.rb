class UsersController < ApplicationController
  layout "settings", only: [:settings]

  def settings
    params[:tab] = "account" if !params[:tab]
  end
end