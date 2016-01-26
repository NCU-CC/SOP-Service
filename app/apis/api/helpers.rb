module API
		module Helpers
			extend Grape::API::Helpers
			
			def bay
     			['bay']
  		end

  		def token 
          
          this_token_string = token_string
            RestClient.get Settings::OAUTH_TOKEN_URL + this_token_string + '?ip=127.0.0.1&referer=http://www.gamer.com.tw', {x_ncu_api_token: Settings::NCU_API_TOKEN} do |response, request, result, &block|
               if response.code == 200
                 this_token_string
               end
               #token_err 401, 'invalid_token'
            this_token_string=response.request
           
          
  		end

  		def token_string
  			   token_string_from_header || token_string_from_request_params
  		end

  		def token_string_from_header
  		    headers['X-Ncu-Api-Token']
  		end

  		def token_string_from_request_params
  			   params[:api_token]
  		end

      def token_err code, massage
         {:error_code => code, :error_message => massage}
      end
  				
		end
  end
end