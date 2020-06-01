class LaptopsController < ApplicationController
 before_action :set_laptop, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, except: [:index, :show]

  # GET /instruments
  # GET /instruments.json
  def index
    @laptops = Laptop.all.order("created_at desc")
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
  end

  # GET /instruments/new
  def new
    @laptop = current_user.laptops.build
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @laptop = current_user.laptops.build(laptop_params)

    respond_to do |format|
      if @laptop.save
        format.html { redirect_to @laptop, notice: 'Laptop was successfully created.' }
        format.json { render :show, status: :created, location: @laptop }
      else
        format.html { render :new }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @laptop.update(laptop_params)
        format.html { redirect_to @laptop, notice: 'Laptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @laptop }
      else
        format.html { render :edit }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @laptop.destroy
    respond_to do |format|
      format.html { redirect_to laptops_url, notice: 'Laptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laptop
      @laptop = Laptop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laptop_params
      params.require(:laptop).permit(:brand, :model, :description, :condition, :os, :title, :price, :image)
     
    end
end
