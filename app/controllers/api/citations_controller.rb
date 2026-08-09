class Api::CitationsController < ApplicationController
  def index
    @citations = Citation.all
    render json: @citations  
  end
end
