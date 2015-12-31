class WelcomeController < ApplicationController
  def index
  	@beans = Bean.all
  end
end
