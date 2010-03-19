class RavesController < ApplicationController
  def new
    @comment = Rave.new(:category => params[:category])
  end
  
  def create
    @comment = Rave.new(params[:rave])

    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Rave was successfully created.'
        format.html { redirect_to(root_url) }
      else
        format.html { render :action => "new" }
      end
    end
  end
end
