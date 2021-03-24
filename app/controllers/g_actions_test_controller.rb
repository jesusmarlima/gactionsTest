class GActionsTestController < ApplicationController
  def test

    begin
      folder = Rails.application.credentials[:temp_folder]
      return false unless File.directory?(folder)

      File.open("#{folder}newfile", 'w+') do |file|
        file.puts('test')
      end
    rescue StandardError => e
      raise(e)
    end

    render json: { response: Rails.application.credentials[:my_key] }
  end
end