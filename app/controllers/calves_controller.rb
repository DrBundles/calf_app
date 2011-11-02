class CalvesController < ApplicationController
  # GET /calves
  # GET /calves.xml
  def index
    @calves = Calf.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @calves }
    end
  end

  # GET /calves/1
  # GET /calves/1.xml
  def show
    @calf = Calf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @calf }
    end
  end

  # GET /calves/new
  # GET /calves/new.xml
  def new
    @calf = Calf.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @calf }
    end
  end

  # GET /calves/1/edit
  def edit
    @calf = Calf.find(params[:id])
  end

  # POST /calves
  # POST /calves.xml
  def create
    @calf = Calf.new(params[:calf])

    respond_to do |format|
      if @calf.save
        format.html { redirect_to(@calf, :notice => 'Calf was successfully created.') }
        format.xml  { render :xml => @calf, :status => :created, :location => @calf }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @calf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /calves/1
  # PUT /calves/1.xml
  def update
    @calf = Calf.find(params[:id])

    respond_to do |format|
      if @calf.update_attributes(params[:calf])
        format.html { redirect_to(@calf, :notice => 'Calf was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @calf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /calves/1
  # DELETE /calves/1.xml
  def destroy
    @calf = Calf.find(params[:id])
    @calf.destroy

    respond_to do |format|
      format.html { redirect_to(calves_url) }
      format.xml  { head :ok }
    end
  end
end
