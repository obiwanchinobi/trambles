class RantsController < ApplicationController
  def new
    @rant = Rant.new
  end
  
  def create
    @rant = Rant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end
end