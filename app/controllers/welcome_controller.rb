class WelcomeController < ApplicationController
  DEFAULT_CRONUTS_URL = 'https://upload.wikimedia.org/wikipedia/commons/8/8b/April_2016_Cronut%C2%AE_2_Burnt_Vanilla_Caramel_-_photo_by_Dominique_Ansel_Bakery.jpg'.freeze
  DEFAULT_DONUTS_URL = 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Glazed-Donut.jpg/250px-Glazed-Donut.jpg'.freeze

  def index    
    @cronuts_url = parse_url(welcome_params[:cronuts_url], DEFAULT_CRONUTS_URL)
    @donuts_url = parse_url(welcome_params[:donuts_url], DEFAULT_DONUTS_URL)
  end

  private

  def welcome_params
    params.permit(:cronuts_url, :donuts_url)
  end

  def parse_url(url, default)
    (url =~ URI::regexp(["http","https"])) == 0 ? url : default
  end
end
