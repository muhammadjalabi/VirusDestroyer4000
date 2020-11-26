class DonationController < ApplicationController
  def index
    @value = params[:value] || 10
  end
end
