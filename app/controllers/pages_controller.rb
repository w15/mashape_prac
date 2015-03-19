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

      # raise @response.inspect

  end

  def face

  end

  def face_response
    @response = Unirest.get "https://faceplusplus-faceplusplus.p.mashape.com/detection/detect?attribute=glass%2Cpose%2Cgender%2Cage%2Crace%2Csmiling&url=#{params['face_url']}",
      headers:{
        "X-Mashape-Key" => ENV['MASHAPE_KEY'],
        "Accept" => "application/json"
      }


  end

  def sentiment
  end

  def sentiment_response
    text = URI.encode(params['text'])

    @response = Unirest.get "https://loudelement-free-natural-language-processing-service.p.mashape.com/nlp-text/?text=#{ text }",
      headers:{
        "X-Mashape-Key" => ENV['MASHAPE_KEY'],
        "Accept" => "application/json",
      }

      raise @response.body.inspect
  end



end
