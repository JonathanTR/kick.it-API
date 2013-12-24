require 'spec_helper'

describe UsersController do
  
  describe 'when signed out' do

    describe 'on GET #new' do
      before { get :new }

      it 'should respond with 200 OK' do
        response.status.should eq(200)
      end

      it 'should render status: ready' do
        response.body.should eq({status: 'ready'}.to_json)
      end

    end

  end

end