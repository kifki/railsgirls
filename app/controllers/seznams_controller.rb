class SeznamsController < ApplicationController
  # GET /seznams
  # GET /seznams.json
  def index
    @seznams = Seznam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seznams }
    end
  end

  # GET /seznams/1
  # GET /seznams/1.json
  def show
    @seznam = Seznam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seznam }
    end
  end

  # GET /seznams/new
  # GET /seznams/new.json
  def new
    @seznam = Seznam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seznam }
    end
  end

  # GET /seznams/1/edit
  def edit
    @seznam = Seznam.find(params[:id])
  end

  # POST /seznams
  # POST /seznams.json
  def create
    @seznam = Seznam.new(params[:seznam])

    respond_to do |format|
      if @seznam.save
        format.html { redirect_to @seznam, notice: 'Seznam was successfully created.' }
        format.json { render json: @seznam, status: :created, location: @seznam }
      else
        format.html { render action: "new" }
        format.json { render json: @seznam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seznams/1
  # PUT /seznams/1.json
  def update
    @seznam = Seznam.find(params[:id])

    respond_to do |format|
      if @seznam.update_attributes(params[:seznam])
        format.html { redirect_to @seznam, notice: 'Seznam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seznam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seznams/1
  # DELETE /seznams/1.json
  def destroy
    @seznam = Seznam.find(params[:id])
    @seznam.destroy

    respond_to do |format|
      format.html { redirect_to seznams_url }
      format.json { head :no_content }
    end
  end
end
