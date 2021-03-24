require 'rails_helper'

describe GActionsTestController do
  context 'Exists' do

    it 'have access to the creds' do
      cred = Rails.application.credentials[:my_key]
      expect(cred).to eq(2)
    end

    it 'exits and return alive' do
      get :test
      cred = Rails.application.credentials[:my_key]
      expect(response.body).to eq({ response: cred }.to_json)
    end
  end
end
