class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build 
  end

  def help
  end
  
  def contact
  end

end
