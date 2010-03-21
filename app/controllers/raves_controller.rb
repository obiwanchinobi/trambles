class RavesController < ApplicationController
  def new
    @comment = Rave.new(:category => params[:category])
    @comment.transport = Transport.find_by_company("Sydney Buses") if @comment.category == Comment::BUS

    @train_lines = TrainLine.ascend_by_name if @comment.category == Comment::TRAIN
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
