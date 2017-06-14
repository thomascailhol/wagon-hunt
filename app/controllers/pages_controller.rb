class PagesController < ApplicationController

  skip_before_action :authenticate_user! # skip list blanche de app_controller

  def home
    @today = Date.today
  end

  def team
    @members = ['Bob', 'Robin', 'Seb']
  end

  def join_us
    render plain: "Send us an email!"
  end
end
