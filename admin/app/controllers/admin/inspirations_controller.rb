require_dependency "admin/application_controller"

module Admin
  class InspirationsController < ApplicationController
    def index
      @inspirations = Inspiration.all

      respond_to do |format|
        format.html
        format.json { render json: @inspirations }
      end
    end

    def show
      @inspiration = Inspiration.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: @inspiration }
      end
    end

    def new
      @inspiration = Inspiration.new

      respond_to do |format|
        format.html
        format.json { render json: @inspiration }
      end
    end

    def edit
      @inspiration = Inspiration.find(params[:id])
    end

    def create
      @inspiration = Inspiration.new(params[:inspiration])

      respond_to do |format|
        if @inspiration.save
          format.html { redirect_to @inspiration, notice: 'Inspiration was successfully created.' }
          format.json { head :no_content }
        else
          format.html { render action: 'new' }
          format.json { render json: @inspiration.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @inspiration = Inspiration.find(params[:id])

      respond_to do |format|
        if @inspiration.update_attributes(params[:inspiration])
          format.html { redirect_to @inspiration, notice: 'Inspiration was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @inspiration.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @inspiration = Inspiration.find(params[:id])
      @inspiration.destroy

      respond_to do |format|
        format.html { redirect_to inspirations_url, notice: 'Inspiration was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end
end
