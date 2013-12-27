class UsersController < ApplicationController

  def new
    render json: {status: 'ready'}.to_json
  end

  def create
    user = make_hash_with_symbol_keys(params["user"])
    User.create(user)
  end


  private

  def make_hash_with_symbol_keys(json_object)
    JSON.parse(json_object, symbolize_names: true)
  end

end