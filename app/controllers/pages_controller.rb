class PagesController < ApplicationController
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
