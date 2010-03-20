class RantsController < ApplicationController
  def new
    @train_lines = TrainLine.ascend_by_name
    @comment = Rant.new(:category => params[:category])
  end
  
  def create
    @train_lines = TrainLine.ascend_by_name
    @comment = Rant.new(params[:rant])

    if @comment.save
      flash[:notice] = 'Rave was successfully created.'
      redirect_to(root_url)
    else
      render :action => "new"
    end
  end
end