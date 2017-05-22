class CustomerInformationsController < ApplicationController
  before_action :set_customer_information, only: [:show, :edit, :update, :destroy]

  # GET /customer_informations
  # GET /customer_informations.json
  def index
    @customer_informations = CustomerInformation.all
  end

  # GET /customer_informations/1
  # GET /customer_informations/1.json
  def show
  end

  # GET /customer_informations/new
  def new
    @customer_information = CustomerInformation.new
  end

  # GET /customer_informations/1/edit
  def edit
  end

  # POST /customer_informations
  # POST /customer_informations.json
  def create
    @customer_information = CustomerInformation.new(customer_information_params)

    respond_to do |format|
      if @customer_information.save
        format.html { redirect_to @customer_information, notice: 'Customer information was successfully created.' }
        format.json { render :show, status: :created, location: @customer_information }
      else
        format.html { render :new }
        format.json { render json: @customer_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_informations/1
  # PATCH/PUT /customer_informations/1.json
  def update
    respond_to do |format|
      if @customer_information.update(customer_information_params)
        format.html { redirect_to @customer_information, notice: 'Customer information was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_information }
      else
        format.html { render :edit }
        format.json { render json: @customer_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_informations/1
  # DELETE /customer_informations/1.json
  def destroy
    @customer_information.destroy
    respond_to do |format|
      format.html { redirect_to customer_informations_url, notice: 'Customer information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_information
      @customer_information = CustomerInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_information_params
      params.require(:customer_information).permit(:Customer_id, :Date_Joined, :Email_Address, :Outstanding_Charges)
    end
end
