class DonationController < ApplicationController
  def index
    @value = params[:value].present? ? params[:value].to_i / 1000 : 10
  end
end
