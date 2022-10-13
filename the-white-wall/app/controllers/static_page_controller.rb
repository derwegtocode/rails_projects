class StaticPageController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    keys en config/application.yml
  end

end
