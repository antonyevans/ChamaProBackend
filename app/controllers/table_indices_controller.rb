class TableIndicesController < ApplicationController
  # GET /table_indices
  # GET /table_indices.xml
  def index
    @table_indices = TableIndex.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @table_indices }
    end
  end

  # GET /table_indices/1
  # GET /table_indices/1.xml
  def show
    @table_index = TableIndex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @table_index }
    end
  end

  # GET /table_indices/new
  # GET /table_indices/new.xml
  def new
    @table_index = TableIndex.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @table_index }
    end
  end

  # GET /table_indices/1/edit
  def edit
    @table_index = TableIndex.find(params[:id])
  end

  # POST /table_indices
  # POST /table_indices.xml
  def create
    @table_index = TableIndex.new(params[:table_index])

    respond_to do |format|
      if @table_index.save
        format.html { redirect_to(@table_index, :notice => 'Table index was successfully created.') }
        format.xml  { render :xml => @table_index, :status => :created, :location => @table_index }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @table_index.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /table_indices/1
  # PUT /table_indices/1.xml
  def update
    @table_index = TableIndex.find(params[:id])

    respond_to do |format|
      if @table_index.update_attributes(params[:table_index])
        format.html { redirect_to(@table_index, :notice => 'Table index was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @table_index.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /table_indices/1
  # DELETE /table_indices/1.xml
  def destroy
    @table_index = TableIndex.find(params[:id])
    @table_index.destroy

    respond_to do |format|
      format.html { redirect_to(table_indices_url) }
      format.xml  { head :ok }
    end
  end
end
