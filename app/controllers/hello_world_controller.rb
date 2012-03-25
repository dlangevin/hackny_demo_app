class HelloWorldController < ApplicationController
  
  def index
    @content = params[:text]
  end

end