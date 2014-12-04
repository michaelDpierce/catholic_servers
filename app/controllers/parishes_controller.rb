class ParishesController < ApplicationController
  before_action :set_parish, only: [:show, :edit, :update, :destroy]

  def index
    @parishes = Parish.all
    respond_with(@parishes)
  end

  def show
    respond_with(@parish)
  end

  def new
    @parish = Parish.new
    respond_with(@parish)
  end

  def edit
  end

  def create
    @parish = Parish.new(parish_params)
    flash[:notice] = 'Parish was successfully created.' if @parish.save
    respond_with(@parish)
  end

  def update
    flash[:notice] = 'Parish was successfully updated.' if @parish.update(parish_params)
    respond_with(@parish)
  end

  def destroy
    @parish.destroy
    respond_with(@parish)
  end

  private
    def set_parish
      @parish = Parish.find(params[:id])
    end

    def parish_params
      params[:parish]
    end
end
