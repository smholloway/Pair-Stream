class PendingStreamsController < ApplicationController
  # GET /pending_streams
  # GET /pending_streams.xml
  def index
    @pending_streams = PendingStream.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pending_streams }
    end
  end

  # GET /pending_streams/1
  # GET /pending_streams/1.xml
  def show
    @pending_stream = PendingStream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pending_stream }
    end
  end

  # GET /pending_streams/new
  # GET /pending_streams/new.xml
  def new
    @pending_stream = PendingStream.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pending_stream }
    end
  end

  # GET /pending_streams/1/edit
  def edit
    @pending_stream = PendingStream.find(params[:id])
  end

  # POST /pending_streams
  # POST /pending_streams.xml
  def create
    @pending_stream = PendingStream.new(params[:pending_stream])

    respond_to do |format|
      if @pending_stream.save
        format.html { redirect_to(@pending_stream, :notice => 'Pending stream was successfully created.') }
        format.xml  { render :xml => @pending_stream, :status => :created, :location => @pending_stream }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pending_stream.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pending_streams/1
  # PUT /pending_streams/1.xml
  def update
    @pending_stream = PendingStream.find(params[:id])

    respond_to do |format|
      if @pending_stream.update_attributes(params[:pending_stream])
        format.html { redirect_to(@pending_stream, :notice => 'Pending stream was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pending_stream.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pending_streams/1
  # DELETE /pending_streams/1.xml
  def destroy
    @pending_stream = PendingStream.find(params[:id])
    @pending_stream.destroy

    respond_to do |format|
      format.html { redirect_to(pending_streams_url) }
      format.xml  { head :ok }
    end
  end
end
