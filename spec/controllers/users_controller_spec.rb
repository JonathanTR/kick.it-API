require 'spec_helper'

describe UsersController do
  
  describe 'when signed out' do

    describe 'on GET #new' do

      before { get :new }

      it 'should respond with 200 OK' do
        response.status.should eq(200)
      end

    end

  end

end