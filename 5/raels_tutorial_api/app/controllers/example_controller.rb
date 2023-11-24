class ExampleController < ApplicationController

  def index
    render json: {"responde": {"message": "this is an example response for example controller"}}
  end

end
