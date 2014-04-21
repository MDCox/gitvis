class AnalysisController < ApplicationController
  def show
    @organization = Organization.find(params[:id])
  end
end
