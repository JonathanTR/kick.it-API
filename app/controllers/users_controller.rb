class UsersController < ApplicationController

  def new
    render json: {status: 'ready'}.to_json
  end

  def create
    input = JSON.parse(params["user"], symbolize_names: true)
    p User.create(input)
  end

end