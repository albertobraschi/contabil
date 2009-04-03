class Admin::CatarcsController < ApplicationController
  # GET /catarcs
  # GET /catarcs.xml
  def index
    @catarcs = Catarc.all
	@catarc = Catarc.new
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @catarcs }
    end
  end

  # GET /catarcs/1
  # GET /catarcs/1.xml
  def show
    @catarc = Catarc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @catarc }
    end
  end

  # GET /catarcs/new
  # GET /catarcs/new.xml
  def new
    @catarc = Catarc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @catarc }
    end
  end

  # GET /catarcs/1/edit
  def edit
    @catarc = Catarc.find(params[:id])
  end

  # POST /catarcs
  # POST /catarcs.xml
  def create
    @catarc = Catarc.new(params[:catarc])

    respond_to do |format|
      if @catarc.save
        flash[:notice] = 'Catarc was successfully created.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @catarc, :status => :created, :location => @catarc }
		format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @catarc.errors, :status => :unprocessable_entity }
		format.js
      end
    end
  end

  # PUT /catarcs/1
  # PUT /catarcs/1.xml
  def update
    @catarc = Catarc.find(params[:id])

    respond_to do |format|
      if @catarc.update_attributes(params[:catarc])
        flash[:notice] = 'Catarc was successfully updated.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @catarc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /catarcs/1
  # DELETE /catarcs/1.xml
  def destroy
    @catarc = Catarc.find(params[:id])
    @catarc.destroy

    respond_to do |format|
      format.html { redirect_to(admin_catarcs_url) }
      format.xml  { head :ok }
	  format.js
    end
  end
end
