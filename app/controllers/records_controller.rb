class RecordsController < ApplicationController
  def index
    @records = Record.where(level: params[:level] || 1).order(score: :desc).limit(100)
  end

  def create
    puts params
    record = Record.create(create_params)

    redirect_to records_path(level: record.level)
  end

  private

  def create_params
    params.require(:record).permit(:username, :score, :level)
  end
end
