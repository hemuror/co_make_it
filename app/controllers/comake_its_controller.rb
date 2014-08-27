class ComakeItsController < ApplicationController
  before_action :set_comake_it, only: [:show, :edit, :update, :destroy]

  # GET /comake_its
  # GET /comake_its.json
  def index
    @comake_its = ComakeIt.all
  end

  # GET /comake_its/1
  # GET /comake_its/1.json
  def show
  end

  # GET /comake_its/new
  def new
    @comake_it = ComakeIt.new
  end

  # GET /comake_its/1/edit
  def edit
  end

  # POST /comake_its
  # POST /comake_its.json
  def create
    @comake_it = ComakeIt.new(comake_it_params)

    respond_to do |format|
      if @comake_it.save
        format.html { redirect_to @comake_it, notice: 'Comake it was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comake_it }
      else
        format.html { render action: 'new' }
        format.json { render json: @comake_it.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comake_its/1
  # PATCH/PUT /comake_its/1.json
  def update
    respond_to do |format|
      if @comake_it.update(comake_it_params)
        format.html { redirect_to @comake_it, notice: 'Comake it was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comake_it.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comake_its/1
  # DELETE /comake_its/1.json
  def destroy
    @comake_it.destroy
    respond_to do |format|
      format.html { redirect_to comake_its_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comake_it
      @comake_it = ComakeIt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comake_it_params
      params.require(:comake_it).permit(:name, :email, :password)
    end
end
