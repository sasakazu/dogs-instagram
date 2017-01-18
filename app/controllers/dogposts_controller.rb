class DogpostsController < ApplicationController



  def new
    @dogpost = Dogpost.new
  end

  def edit
  end


  def create
    @dogpost = Dogpost.new(dogpost_params)
      if @dogpost.save
          redirect_to @dogpost

    	else
    		render "new"
    	end
      end

def show
  @dogpost = Dogpost.find(params[:id])
end



    private

      def dogpost_params
        params.require(:dogpost).permit(:comment)
      end



end
