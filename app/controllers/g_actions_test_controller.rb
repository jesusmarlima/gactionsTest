class GActionsTestController < ApplicationController
  def test

    folder = Rails.application.credentials[:temp_folder]
    File.open("#{folder}newfile", 'w+') do |file|
      file.puts('test')
    end

    render json: { response: Rails.application.credentials[:my_key] }
  end
end