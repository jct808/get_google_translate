require "get_google_translate/version"
require 'google/api_client'
require 'json'

module GetGoogleTranslate

  	class Translate	
		def self.new(key, source, target, text)
			# Generate Key From Google API console
			client = Google::APIClient.new(:key => key, 
				:application_name => "getGoogleTranslate", :application_version => 1, :authorization => nil )

			# Catch Exception if there is something wrong 
			begin
				translate = client.discovered_api('translate', 'v2')
				result = client.execute(
					:api_method => translate.translations.list,
					:parameters => {
						'format' => 'text',
						'source' => source,
						'target' => target,
						'q' => text
					}
				)
				# Encoding translate Context
				result.body.force_encoding("UTF-8")
				# Get only translateText from query result
				translatedText = JSON.parse(result.body)	

				# Check it does return a error from google server
				if translatedText["error"] != nil
  					return translatedText["error"]["message"]
  				else
  					return translatedText["data"]["translations"][0]["translatedText"] 
  				end
				
			rescue Exception => e
				# Output the error message 
				return "Error: #{e}" 
			end
		end
	
	end
end
