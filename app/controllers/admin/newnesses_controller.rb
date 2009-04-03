class Admin::NewnessesController < ApplicationController
  # GET /newnesses
  # GET /newnesses.xml
  def index
    @newnesses = Newness.all
	@newness = Newness.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newnesses }
    end
  end

  # GET /newnesses/1
  # GET /newnesses/1.xml
  def show
    @newness = Newness.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newness }
    end
  end

  # GET /newnesses/new
  # GET /newnesses/new.xml
  def new
    @newness = Newness.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newness }
    end
  end

  # GET /newnesses/1/edit
  def edit
    @newness = Newness.find(params[:id])
  end

  # POST /newnesses
  # POST /newnesses.xml
  def create
    @newness = Newness.new(params[:newness])

    respond_to do |format|
      if @newness.save
        flash[:notice] = 'Newness was successfully created.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @newness, :status => :created, :location => @newness }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newness.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newnesses/1
  # PUT /newnesses/1.xml
  def update
    @newness = Newness.find(params[:id])

    respond_to do |format|
      if @newness.update_attributes(params[:newness])
        flash[:notice] = 'Newness was successfully updated.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newness.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newnesses/1
  # DELETE /newnesses/1.xml
  def destroy
    @newness = Newness.find(params[:id])
    @newness.destroy

    respond_to do |format|
      format.html { redirect_to(admin_newnesses_url) }
      format.xml  { head :ok }
    end
  end
end
