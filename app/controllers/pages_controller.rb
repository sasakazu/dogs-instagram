class PagesController < ApplicationController

  def index
    @dogposts = Dogpost.all
    @users = User.all
  end

  def about
  end

  def contact
  end




            private

              def dogpost_params
                params.require(:dogpost).permit(:comment,:image)
              end





end
