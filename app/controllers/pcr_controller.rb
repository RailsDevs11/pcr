class PcrController < ApplicationController
  #before_filter :authenticate_user!
  
  def index
    @templates = Template.active.order(title: :desc)
  end
  
end
