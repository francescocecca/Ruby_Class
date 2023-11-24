class ExampleController < ApplicationController

  def index
    render json: {"response": {"message": "example of response"}}
  end

  def users
    render json: {"response": {"data": "array of all users"}}
  end

  def user_with_param
    render json: {"response": {"data": "some user", "params": params } }
  end
end
