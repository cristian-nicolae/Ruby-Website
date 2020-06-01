class WatchesController < ApplicationController
 before_action :set_watch, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, except: [:index, :show]

  # GET /instruments
  # GET /instruments.json
  def index
    @watches = Watch.all.order("created_at desc")
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
  end

  # GET /instruments/new
  def new
    @watch = current_user.watches.build
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @watch = current_user.watches.build(watch_params)

    respond_to do |format|
      if @watch.save
        format.html { redirect_to @watch, notice: 'Watch was successfully created.' }
        format.json { render :show, status: :created, location: @watch }
      else
        format.html { render :new }
        format.json { render json: @watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @watch.update(watch_params)
        format.html { redirect_to @watch, notice: 'Watch was successfully updated.' }
        format.json { render :show, status: :ok, location: @watch }
      else
        format.html { render :edit }
        format.json { render json: @watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @watch.destroy
    respond_to do |format|
      format.html { redirect_to watches_url, notice: 'Watch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watch
      @watch = Watch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watch_params
      params.require(:watch).permit(:brand, :model, :description, :condition, :color, :title, :price, :image)
     
    end
end
