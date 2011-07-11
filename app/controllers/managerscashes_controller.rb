class ManagerscashesController < ApplicationController
  # GET /managerscashes
  # GET /managerscashes.xml
  def index
    @managerscashes = Managerscash.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @managerscashes }
      format.json  { render :json => @managerscashes }
    end
  end

  # GET /managerscashes/1
  # GET /managerscashes/1.xml
  def show
    @managerscash = Managerscash.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @managerscash }
      format.json  { render :json => @managerscash }
    end
  end

  # GET /managerscashes/new
  # GET /managerscashes/new.xml
  def new
    @managerscash = Managerscash.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @managerscash }
      format.json  { render :json => @managerscash }
    end
  end

  # GET /managerscashes/1/edit
  def edit
    @managerscash = Managerscash.find(params[:id])
  end

  # POST /managerscashes
  # POST /managerscashes.xml
  def create
    @managerscash = Managerscash.new(params[:managerscash])

    respond_to do |format|
      if @managerscash.save
        format.html { redirect_to(@managerscash, :notice => 'Managerscash was successfully created.') }
        format.xml  { render :xml => @managerscash, :status => :created, :location => @managerscash }
        format.json  { render :json => @managerscash, :status => :created, :location => @managerscash }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @managerscash.errors, :status => :unprocessable_entity }
        format.json  { render :json => @managerscash.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /managerscashes/1
  # PUT /managerscashes/1.xml
  def update
    @managerscash = Managerscash.find(params[:id])

    respond_to do |format|
      if @managerscash.update_attributes(params[:managerscash])
        format.html { redirect_to(@managerscash, :notice => 'Managerscash was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @managerscash.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /managerscashes/1
  # DELETE /managerscashes/1.xml
  def destroy
    @managerscash = Managerscash.find(params[:id])
    @managerscash.destroy

    respond_to do |format|
      format.html { redirect_to(managerscashes_url) }
      format.xml  { head :ok }
    end
  end
end
