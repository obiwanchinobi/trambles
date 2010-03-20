class RavesController < ApplicationController
  def new
    @train_lines = TrainLine.ascend_by_name
    @comment = Rave.new(:category => params[:category])
  end
  
  def create
    @train_lines = TrainLine.ascend_by_name
    @comment = Rave.new(params[:rave])
    
    if @comment.save
      flash[:notice] = 'Rave was successfully created.'
      redirect_to(root_url)
    else
      render :action => "new"
    end
  end
end
