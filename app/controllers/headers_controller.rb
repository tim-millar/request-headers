class HeadersController < ApplicationController
  def show
    render json: request_headers
  end

  private

  def request_headers
    RequestHeaders.new(request)
  end
end
