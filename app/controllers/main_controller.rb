class MainController < ApplicationController

    require "http"
    require 'uri'
    require 'json'
    include ActionController::MimeResponds

    def get_location
        res = nil
        address = params[:query]
        url = "https://maps.googleapis.com/maps/api/geocode/json?address="
        url += URI.encode(address)
        url += "&key="
        url += ENV['API_KEY']
    
        req = HTTP.get(url)
        if(req.status == 200)
            res = JSON[req.body.to_s]
            unless(res["results"].empty?)
                res = res["results"][0]["geometry"]["location"]
            else
                res = {"result": "The request did not encounter any errors, but returned no results."}
            end
        end
        
        respond_to do |format|
            unless res.nil?
                format.json { 
                    render json: res, status: :ok
                  }
            else
                format.json { 
                    render json: req.error, status: :unprocessable_entity
                  }
            end
        end
      end
end
