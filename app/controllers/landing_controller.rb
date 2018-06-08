# app/controllers/landing_controller.rb
class LandingController < ApplicationController
  def index
    fetch_sliders
    fetch_products
    fetch_inspirations
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

  def fetch_inspirations
    @inspirations = Inspiration.all
  end

  def fetch_shippings
    @shippings = Shipping.all
  end
end
