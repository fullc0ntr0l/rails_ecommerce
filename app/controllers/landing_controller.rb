# app/controllers/landing_controller.rb
class LandingController < ApplicationController
  def index
    fetch_sliders
    fetch_products
    fetch_inspires
    fetch_shippings

    render 'landing/index'
  end

  private

  def fetch_sliders
    @sliders = Slider.all
  end

  def fetch_products
    @products = Product.all
  end

  def fetch_inspires
    @inspires = Inspire.all
  end

  def fetch_shippings
    @shippings = Shipping.all
  end
end
