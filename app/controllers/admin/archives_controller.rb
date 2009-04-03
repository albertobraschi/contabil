class Admin::ArchivesController < ApplicationController
  # GET /archives
  # GET /archives.xml
  def index
    @archives = Archive.all
	@archive = Archive.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @archives }
    end
  end

  # GET /archives/1
  # GET /archives/1.xml
  def show
    @archive = Archive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @archive }
    end
  end

  # GET /archives/new
  # GET /archives/new.xml
  def new
    @archive = Archive.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @archive }
    end
  end

  # GET /archives/1/edit
  def edit
    @archive = Archive.find(params[:id])
  end

  # POST /archives
  # POST /archives.xml
  def create
    @archive = Archive.new(params[:archive])

    respond_to do |format|
      if @archive.save
        flash[:notice] = 'Archive was successfully created.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @archive, :status => :created, :location => @archive }
		format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @archive.errors, :status => :unprocessable_entity }
		format.js
      end
    end
  end

  # PUT /archives/1
  # PUT /archives/1.xml
  def update
    @archive = Archive.find(params[:id])

    respond_to do |format|
      if @archive.update_attributes(params[:archive])
        flash[:notice] = 'Archive was successfully updated.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @archive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /archives/1
  # DELETE /archives/1.xml
  def destroy
    @archive = Archive.find(params[:id])
    @archive.destroy

    respond_to do |format|
      format.html { redirect_to(admin_archives_url) }
      format.xml  { head :ok }
	  format.js
    end
  end
end
