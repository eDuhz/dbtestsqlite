class HomeController < ApplicationController
  def index
    if( params.has_key?(:id) && params.has_key?(:random) )
      #works both ways!
      @id = params[:id]
      @random = params['random']
      
    end
  end
  def about
    @controller_message = "Hello from controller"
  end
end
