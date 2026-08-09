class Api::CitationsController < ApplicationController
  def index
    order = params[:order] == "asc" ? :asc : :desc
    citations = Citation.order(date: order)
    render json: citations
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end

  def show
    citation = Citation.find(params[:id])
    render json: citation
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end
end