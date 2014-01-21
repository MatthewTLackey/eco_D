class SurveysController < ApplicationController

  def index
    @surveys = Survey.all

  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)

  end

  def edit
    @survey = Survey.find(params[:id])

  end

  def update
    @survey = Survey.find(params[:id])

  end

  def destroy

  end

  private
  def survey_params()
    params.require(:survey).permit(:name, :description, :address)
  end

end
