class OrganizationsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @org = Organization.new(organization_params)
    if @org.save
      redirect_to organization_path(@org)
    else
      flash[:alert] = "Please enter an orginization name"
      redirect_to root_path
    end
  end

  def show
  end

private
  def organization_params
    params.require(:organization).permit(:name)
  end
end
