class UsersController < ApplicationController

  def new
    render json: {status: 'ready'}.to_json
  end

end