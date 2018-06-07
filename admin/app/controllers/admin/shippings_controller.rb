require_dependency "admin/application_controller"

module Admin
  class ShippingsController < ApplicationController
    def index
      @shippings = Shipping.all

      respond_to do |format|
        format.html
        format.json { render json: @shippings }
      end
    end

    def show
      @shipping = Shipping.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: @shipping }
      end
    end

    def new
      @shipping = Shipping.new

      respond_to do |format|
        format.html
        format.json { render json: @shipping }
      end
    end

    def edit
      @shipping = Shipping.find(params[:id])
    end

    def create
      @shipping = Shipping.new(params[:shipping])

      respond_to do |format|
        if @shipping.save
          format.html { redirect_to @shipping, notice: 'Shipping was successfully created.' }
          format.json { head :no_content }
        else
          format.html { render action: 'new' }
          format.json { render json: @shipping.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @shipping = Shipping.find(params[:id])

      respond_to do |format|
        if @shipping.update_attributes(params[:shipping])
          format.html { redirect_to @shipping, notice: 'Shipping was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @shipping.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @shipping = Shipping.find(params[:id])
      @shipping.destroy

      respond_to do |format|
        format.html { redirect_to shippings_url, notice: 'Shipping was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end
end
