class DogpostsController < ApplicationController



  def new
    @dogpost = Dogpost.new
  end

  def edit
  end


  def create
    @dogpost = current_user.dogposts.build(dogpost_params)
      if @dogpost.save
          redirect_to root_path

    	else
    		render "new"
    	end
  end








  def show
    @dogpost = Dogpost.find(params[:id])
  end


  def index
    @dogposts = Dogpost.all
  end



              private

                def dogpost_params
                  params.require(:dogpost).permit(:comment,:image)
                end



end
