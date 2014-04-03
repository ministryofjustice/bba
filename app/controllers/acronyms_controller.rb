class AcronymsController < ApplicationController
  # GET /define/bba.json
  def define
    @acronym = Acronym.define(params[:acronym])
  end

  # GET /acronyms
  # GET /acronyms.json
  def index
    @acronyms = Acronym
    if params[:search]
      @acronyms = Acronym.where(['acronym iLIKE ?', "%#{params[:search]}%"])
    end

    @acronyms = @acronyms.order(:acronym)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acronyms }
    end
  end

  # GET /acronyms/1
  # GET /acronyms/1.json
  def show
    @acronym = Acronym.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acronym }
    end
  end

  # GET /acronyms/new
  # GET /acronyms/new.json
  def new
    @acronym = Acronym.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @acronym }
    end
  end

  # GET /acronyms/1/edit
  def edit
    @acronym = Acronym.find(params[:id])
  end

  # POST /acronyms
  # POST /acronyms.json
  def create
    @acronym = Acronym.new(params[:acronym])

    respond_to do |format|
      if @acronym.save
        format.html { redirect_to acronyms_path, notice: 'Acronym was successfully created.' }
        format.json { render json: @acronym, status: :created, location: @acronym }
      else
        format.html { render action: "new" }
        format.json { render json: @acronym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acronyms/1
  # PUT /acronyms/1.json
  def update
    @acronym = Acronym.find(params[:id])

    respond_to do |format|
      if @acronym.update_attributes(params[:acronym])
        format.html { redirect_to acronyms_path, notice: 'Acronym was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @acronym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acronyms/1
  # DELETE /acronyms/1.json
  def destroy
    @acronym = Acronym.find(params[:id])
    @acronym.destroy

    respond_to do |format|
      format.html { redirect_to acronyms_url }
      format.json { head :no_content }
    end
  end
end
