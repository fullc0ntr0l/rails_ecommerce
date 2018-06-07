require_dependency "admin/application_controller"

module Admin
  class SlidersController < ApplicationController
    def index
      @sliders = Slider.all

      respond_to do |format|
        format.html
        format.json { render json: @sliders }
      end
    end

    def show
      @slider = Slider.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: @slider }
      end
    end

    def new
      @slider = Slider.new

      respond_to do |format|
        format.html
        format.json { render json: @slider }
      end
    end

    def edit
      @slider = Slider.find(params[:id])
    end

    def create
      @slider = Slider.new(params[:slider])

      respond_to do |format|
        if @slider.save
          format.html { redirect_to @slider, notice: 'Slider was successfully created.' }
          format.json { head :no_content }
        else
          format.html { render action: 'new' }
          format.json { render json: @slider.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @slider = Slider.find(params[:id])

      respond_to do |format|
        if @slider.update_attributes(params[:slider])
          format.html { redirect_to @slider, notice: 'Slider was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @slider.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @slider = Slider.find(params[:id])
      @slider.destroy

      respond_to do |format|
        format.html { redirect_to sliders_url, notice: 'Slider was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end
end
