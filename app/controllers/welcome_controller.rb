class WelcomeController < ApplicationController
  def index
  	@roasters = Roaster.all
  	@producers = Producer.all
  	@hash = Gmaps4rails.build_markers(@producers) do |producer, marker|
    	marker.lat producer.latitude
    	marker.lng producer.longitude
    	marker.infowindow producer.name
    end
    @hash2 = Gmaps4rails.build_markers(@roasters) do |roaster, marker|
    	marker.lat roaster.latitude
    	marker.lng roaster.longitude
    	marker.infowindow roaster.name
    end 
end
end
