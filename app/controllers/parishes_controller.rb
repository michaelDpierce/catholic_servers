class ParishesController < ApplicationController
  before_action :set_parish, only: [:show, :edit, :update, :destroy]

  def index
    @parishes = Parish.all
    respond_to do |format|
      format.html
      format.json { render json: @parishes }
    end
  end

  def show
  end

  def new
    @parish = Parish.new
  end

  def edit
  end

  def create
    @parish = Parish.new(parish_params)
    if @parish.save
      redirect_to parishes_path, notice: 'Parish was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    flash[:notice] = 'Parish was successfully updated.' if @parish.update(parish_params)
  end

  def destroy
    @parish.destroy
    respond_to do |format|
      format.html { redirect_to parishes_path }
      format.json { head :no_content }
    end
  end

  private

  def set_parish
    @parish = Parish.find(params[:id])
  end

  def parish_params
    params.require(:parish).permit(:name, :pastor, :admin_name, :admin_email,
                                   :admin_email_type, :admin_primary_phone,
                                   :admin_primary_phone_type, :address_1,
                                   :address_2, :city, :state, :zip,
                                   :primary_phone, :primary_phone_type,
                                   :secondary_phone, :secondary_phone_type,
                                   :email, :secondary_email)
  end
end
