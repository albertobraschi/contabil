class Admin::CostumersController < ApplicationController

  
  
  # GET /costumers
  # GET /costumers.xml
  def index
    @costumers = Costumer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @costumers }
	  format.js
    end
  end

  # GET /costumers/1
  # GET /costumers/1.xml
  def show
    @costumer = Costumer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @costumer }
    end
  end

  # GET /costumers/new
  # GET /costumers/new.xml
  def new
    @costumer = Costumer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @costumer }
    end
  end

  # GET /costumers/1/edit
  def edit
    @costumer = Costumer.find(params[:id])
  end

  # POST /costumers
  # POST /costumers.xml
  def create
    @costumer = Costumer.new(params[:costumer])
    @costumer.user = User.new(params[:user])

    respond_to do |format|
      if @costumer.save
        flash[:notice] = 'Costumer was successfully created.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @costumer, :status => :created, :location => @costumer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @costumer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /costumers/1
  # PUT /costumers/1.xml
  def update
    @costumer = Costumer.find(params[:id])

    respond_to do |format|
      if @costumer.update_attributes(params[:costumer])
        flash[:notice] = 'Costumer was successfully updated.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @costumer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /costumers/1
  # DELETE /costumers/1.xml
  def destroy
    @costumer = Costumer.find(params[:id])
    @costumer.destroy

    respond_to do |format|
      format.html { redirect_to(admin_costumers_url) }
      format.xml  { head :ok }
	  format.js
    end
  end  

  
  
end
