class Admin::NoticesController < ApplicationController
  # GET /notices
  # GET /notices.xml
  def index
    @notices = Notice.all
	@notice = Notice.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notices }
    end
  end

  # GET /notices/1
  # GET /notices/1.xml
  def show
    @notice = Notice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @notice }
    end
  end

  # GET /notices/new
  # GET /notices/new.xml
  def new
    @notice = Notice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @notice }
    end
  end

  # GET /notices/1/edit
  def edit
    @notice = Notice.find(params[:id])
  end

  # POST /notices
  # POST /notices.xml
  def create
    @notice = Notice.new(params[:notice])

    respond_to do |format|
      if @notice.save
        flash[:notice] = 'Notice was successfully created.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @notice, :status => :created, :location => @notice }
		format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @notice.errors, :status => :unprocessable_entity }
		format.js
      end
    end
  end

  # PUT /notices/1
  # PUT /notices/1.xml
  def update
    @notice = Notice.find(params[:id])

    respond_to do |format|
      if @notice.update_attributes(params[:notice])
        flash[:notice] = 'Notice was successfully updated.'
        format.html { redirect_to([:admin,@notice]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @notice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.xml
  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to(admin_notices_url) }
      format.xml  { head :ok }
	  format.js
    end
  end
end
