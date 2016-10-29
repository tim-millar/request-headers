class HeaderController < ApplicationController
  def show
    render json: request.headers
  end
end
