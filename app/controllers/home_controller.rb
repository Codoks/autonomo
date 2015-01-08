class HomeController < ApplicationController
  def index
  end

  def login
    render "shared/login_form"
  end
end
