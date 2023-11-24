# ESERCIZIO

# Create a controller
# rails generate controller
# Define routes planets and tested route with paramenter and create corresponding actions for the routes

class PlanetsController < ApplicationController

  def planets
    render json: {"response": {"data": "List of Planets"}}
  end

  def planets_with_params
    render json: {"response": {"data": "Planet", "params": params}}
  end

end
