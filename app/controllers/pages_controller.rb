class PagesController < ApplicationController
  def yoda
  end

  def yoda_response

    input_text = URI.encode(params[:input_text])

    @response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{input_text}",
      headers:{
        "X-Mashape-Key" => ENV['MASHAPE_KEY'],
        "Accept" => "text/plain"
      }

  end
end
