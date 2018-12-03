class RecipeController < ApplicationController
  def index

  	response = HTTParty.post('https://gateway-syd.watsonplatform.net/text-to-speech/api', 
    :header => { 
        :things => [{myid: 1}, {id: 2}, {id: 3}],
    }.to_json,
    :headers => { 
        'Content-Type' => 'application/json', 
        'Accept' => 'audio/wav'
    }
     :data => '{ 
        "text": "Les bretons les meilleurs"}'
     :output => hello_world.wav
        {
        	"https://stream.watsonplatform.net/text-to-speech/api/v1/synthesize"
        }
    }
)

  	puts response
  end
end
