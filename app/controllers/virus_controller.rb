class VirusController < ApplicationController
  LEVELS = {
    1 => 50,
    2 => 100,
    3 => 250,
    4 => 500,
    5 => 750,
    6 => 1000,
    7 => 1500,
    8 => 2500,
    9 => 5000
  }

  def index
    @level = params[:level].to_i || 1
    @virus_hp = LEVELS[@level]
  end
end
