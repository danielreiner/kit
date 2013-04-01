class FootersController < ApplicationController
  # GET /footers
  # GET /footers.json
  def index
    @footers = Footer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @footers }
    end
  end

  # GET /footers/1
  # GET /footers/1.json
  def show
    @footer = Footer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @footer }
    end
  end

  # GET /footers/new
  # GET /footers/new.json
  def new
    @footer = Footer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @footer }
    end
  end

  # GET /footers/1/edit
  def edit
    @footer = Footer.find(params[:id])
  end

  # POST /footers
  # POST /footers.json
  def create
    @footer = Footer.new(params[:footer])

    respond_to do |format|
      if @footer.save
        format.html { redirect_to @footer, notice: 'Footer was successfully created.' }
        format.json { render json: @footer, status: :created, location: @footer }
      else
        format.html { render action: "new" }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /footers/1
  # PUT /footers/1.json
  def update
    @footer = Footer.find(params[:id])

    respond_to do |format|
      if @footer.update_attributes(params[:footer])
        format.html { redirect_to @footer, notice: 'Footer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @footer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footers/1
  # DELETE /footers/1.json
  def destroy
    @footer = Footer.find(params[:id])
    @footer.destroy

    respond_to do |format|
      format.html { redirect_to footers_url }
      format.json { head :no_content }
    end
  end
end
