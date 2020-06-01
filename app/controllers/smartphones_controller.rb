class SmartphonesController < ApplicationController
  before_action :set_smartphone, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /smartphones
  # GET /smartphones.json
  def index
    @smartphones = Smartphone.all.order("created_at desc")
  end

  # GET /smartphones/1
  # GET /smartphones/1.json
  def show
  end

  # GET /smartphones/new
  def new
    @smartphone = current_user.smartphones.build
  end

  # GET /smartphones/1/edit
  def edit
  end

  # POST /smartphones
  # POST /smartphones.json
  def create
    @smartphone = current_user.smartphones.build(smartphone_params)

    respond_to do |format|
      if @smartphone.save
        format.html { redirect_to @smartphone, notice: 'Smartphone was successfully created.' }
        format.json { render :show, status: :created, location: @smartphone }
      else
        format.html { render :new }
        format.json { render json: @smartphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smartphones/1
  # PATCH/PUT /smartphones/1.json
 def update
    respond_to do |format|
      if @smartphone.update(smartphone_params)
        format.html { redirect_to @smartphone, notice: 'Smartphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @smartphone }
      else
        format.html { render :edit }
        format.json { render json: @smartphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smartphones/1
  # DELETE /smartphones/1.json
  def destroy
    @smartphone.destroy
    respond_to do |format|
      format.html { redirect_to smartphone_url, notice: 'Smartphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smartphone
      @smartphone = Smartphone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smartphone_params
      params.require(:smartphone).permit(:brand, :model, :description, :condition, :color, :title, :type, :price, :image)
    end
end

