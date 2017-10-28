class SearchController < ApplicationController
  def show
    @test = params[:query]
    image_api = ImageAPI.new
    @json = image_api.getImage(@test)
    @img_url = @json["value"][0]["thumbnailUrl"]
  end

end
