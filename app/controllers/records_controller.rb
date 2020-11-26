class RecordsController < ApplicationController
  def index
    @records = Record.where(level: params[:level] || 1).order(score: :asc).limit(25)
    @record = Record.find_by(id: params[:id])
  end

  def create
    record = Record.create(create_params)

    redirect_to records_path(level: record.level, id: record.id)
  end

  private

  def create_params
    params.require(:record).permit(:username, :score, :level)
  end
end
