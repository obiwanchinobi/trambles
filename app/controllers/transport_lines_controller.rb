class TransportLinesController < ApplicationController
  # GET /transport_lines
  # GET /transport_lines.xml
  def index
    @transport_lines = TransportLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @transport_lines }
    end
  end

  # GET /transport_lines/1
  # GET /transport_lines/1.xml
  def show
    @transport_line = TransportLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @transport_line }
    end
  end

  # GET /transport_lines/new
  # GET /transport_lines/new.xml
  def new
    @transport_line = TransportLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @transport_line }
    end
  end

  # GET /transport_lines/1/edit
  def edit
    @transport_line = TransportLine.find(params[:id])
  end

  # POST /transport_lines
  # POST /transport_lines.xml
  def create
    @transport_line = TransportLine.new(params[:transport_line])

    respond_to do |format|
      if @transport_line.save
        flash[:notice] = 'TransportLine was successfully created.'
        format.html { redirect_to(@transport_line) }
        format.xml  { render :xml => @transport_line, :status => :created, :location => @transport_line }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @transport_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transport_lines/1
  # PUT /transport_lines/1.xml
  def update
    @transport_line = TransportLine.find(params[:id])

    respond_to do |format|
      if @transport_line.update_attributes(params[:transport_line])
        flash[:notice] = 'TransportLine was successfully updated.'
        format.html { redirect_to(@transport_line) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @transport_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transport_lines/1
  # DELETE /transport_lines/1.xml
  def destroy
    @transport_line = TransportLine.find(params[:id])
    @transport_line.destroy

    respond_to do |format|
      format.html { redirect_to(transport_lines_url) }
      format.xml  { head :ok }
    end
  end
end
