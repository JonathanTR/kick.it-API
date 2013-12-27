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

    describe 'on POST #create' do

      describe 'with valid params' do
        it 'should create a user' do
          expect {
            post :create, user: {
              email: 'John.Doe@example.com',
              password: 'pass1234',
              password_confirmation: 'pass1234',
              name: 'John Doe'
            }.to_json
          }.to change{ User.count }
        end

      end

    end

  end

end