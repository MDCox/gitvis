class MainController < ApplicationController
  def index
    @organization = Organization.new
  end
end
