class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def detail
    @flat = @flats.find do |flat|
      flat["id"] == params[:id].to_i
    end
  end

  private
    def set_flats
      url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
      data = RestClient.get(url)
      @flats = JSON.parse(data)
    end
end
