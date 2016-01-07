class WelcomeController < ApplicationController
  def index
  	@producers = Producer.all
  	@hash = Gmaps4rails.build_markers(@producers) do |producer, marker|
    	marker.lat producer.latitude
    	marker.lng producer.longitude
    	marker.infowindow producer.name
  end
end
end
