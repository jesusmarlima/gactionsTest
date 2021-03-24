require 'rails_helper'

describe GActionsTestController do
  context 'Exists' do
    it 'exits and return alive' do
      get :test
      cred = Rails.application.credentials[:my_key]
      expect(response.body).to eq({ response: cred }.to_json)
    end
  end
end
