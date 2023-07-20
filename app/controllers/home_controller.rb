class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def offline
    render 'offline', layout: false
  end
end