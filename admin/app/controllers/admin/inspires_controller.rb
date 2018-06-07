require_dependency "admin/application_controller"

module Admin
  class InspiresController < ApplicationController
    def index
      @inspires = Inspire.all

      respond_to do |format|
        format.html
        format.json { render json: @inspires }
      end
    end

    def show
      @inspire = Inspire.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: @inspire }
      end
    end

    def new
      @inspire = Inspire.new

      respond_to do |format|
        format.html
        format.json { render json: @inspire }
      end
    end

    def edit
      @inspire = Inspire.find(params[:id])
    end

    def create
      @inspire = Inspire.new(params[:inspire])

      respond_to do |format|
        if @inspire.save
          format.html { redirect_to @inspire, notice: 'Inspire was successfully created.' }
          format.json { head :no_content }
        else
          format.html { render action: 'new' }
          format.json { render json: @inspire.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @inspire = Inspire.find(params[:id])

      respond_to do |format|
        if @inspire.update_attributes(params[:inspire])
          format.html { redirect_to @inspire, notice: 'Inspire was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @inspire.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @inspire = Inspire.find(params[:id])
      @inspire.destroy

      respond_to do |format|
        format.html { redirect_to inspires_url, notice: 'Inspire was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end
end
