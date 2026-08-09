class Api::CitationsController < ApplicationController
  def index
    citations = Citation.order(date: :desc)

    render json: citations
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end
end