class RavesController < ApplicationController
  def new
    @rave = Rave.new
  end
  
  def create
    @rave = Rave.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end
end
