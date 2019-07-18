class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]

  def import
    service_result = EtlProcessor::Csv.call(model: Unit)

    if service_result.success?
      redirect_to units_url, notice: 'ETL process by CSV was successfully.'
    else
      redirect_to units_url, error: 'Something was wrong.'
    end
  end

  def reser_data
    Unit.delete_all

    redirect_to units_url, notice: 'Reset data was successfully.'
  end

  # GET /units
  def index
    @units = Unit.all
  end

  # GET /units/1
  def show
  end

  # GET /units/new
  def new
    @unit = Unit.new
  end

  # GET /units/1/edit
  def edit
  end

  # POST /units
  def create
    @unit = Unit.new(unit_params)

    if @unit.save
      redirect_to @unit, notice: 'Unit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /units/1
  def update
    if @unit.update(unit_params)
      redirect_to @unit, notice: 'Unit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /units/1
  def destroy
    @unit.destroy
    redirect_to units_url, notice: 'Unit was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit
      @unit = Unit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unit_params
      params.require(:unit).permit(:price, :name, :description, :width, :length, :height, :door_height, :door_width, :door_type, :access_type, :floor, :size, :area, :standard_rate, :managed_rate, :available_for_move_in, :rentable, :status, :payment_status, :current_ledger_id, :current_tenant_id, :combination_lock_number, :attribute_description, :deleted, :damaged, :complimentary, :channel_rate, :unit_amenities, :unit_type, :unit_group_id)
    end
end
