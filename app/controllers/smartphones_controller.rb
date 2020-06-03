class SmartphonesController < ApplicationController
  before_action :set_smartphone, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /smartphones
  # GET /smartphones.json
  def index
    @smartphones = Smartphone.all.order("created_at desc")
  end

  def smartphone_brand_huawei
    @smartphones = Smartphone.where(brand: "Huawei")
  end

  def smartphone_brand_apple
    @smartphones = Smartphone.where(brand: "Apple")
  end

  def smartphone_brand_samsung
    @smartphones = Smartphone.where(brand: "Samsung")
  end

  def smartphone_brand_oppo
    @smartphones = Smartphone.where(brand: "Oppo")
  end

  def smartphone_brand_xiaomi
    @smartphones = Smartphone.where(brand: "Xiaomi")
  end

  def smartphone_price_0_250
    @smartphones = Smartphone.where("price < 250")
  end
  def smartphone_price_250_500
    @smartphones = Smartphone.where("price between 250 and 500")
  end
  def smartphone_price_500_1000
    @smartphones = Smartphone.where("price between 500 and 1000")
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

