class AnalysisController < ApplicationController
  def show
    @org = Organization.find(params[:id])
  end
end
