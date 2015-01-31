class DriversController < ApplicationController
  before_action :set_driver, only: [:show, :edit, :update, :destroy]

  # GET /driver
  # GET /driver.json
  def index
    @drivers = Driver.all
  end

  # GET /driver/1
  # GET /driver/1.json
  def show
  end

  # GET /driver/new
  def new
    @driver = driver.new
  end

  # GET /driver/1/edit
  def edit
  end

  # POST /driver
  # POST /driver.json
  def create
    @driver = Driver.new(driver_params)

    respond_to do |format|
      if @Driver.save
        format.html { redirect_to @driver, notice: 'driver was successfully created.' }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driver/1
  # PATCH/PUT /driver/1.json
  def update
    respond_to do |format|
      if @Driver.update(driver_params)
        format.html { redirect_to @driver, notice: 'driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driver/1
  # DELETE /driver/1.json
  def destroy
    @Driver.destroy
    respond_to do |format|
      format.html { redirect_to driver_url, notice: 'driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_params
      params.require(:driver).permit(:driver_type, :driver_no, :rate, :insured)
    end
end
