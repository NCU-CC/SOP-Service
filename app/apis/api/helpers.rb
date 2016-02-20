module API
		module Helpers
			extend Grape::API::Helpers
			
			def bay
     			['bay']
  		end

  		def api_token_check
          this_token = token_string
          response=RestClient::Request.execute method: :get, url: Settings::OAUTH_TOKEN_URL + this_token+'?ip=127.0.0.1&referer=http://www.gamer.com.tw', headers: {x_ncu_api_token: Settings::NCU_API_TOKEN}
          res=JSON.parse response.body
      end

      def access_token_check
          this_token = token_string
          response=RestClient::Request.execute method: :get, url: Settings::OAUTH_ACCESS_TOKEN_URL + this_token+'?ip=127.0.0.1&referer=http://www.gamer.com.tw', headers: {x_ncu_api_token: Settings::NCU_API_TOKEN}
          res=JSON.parse response.body
      end

  		def token_string
  			   token_string_from_header || token_string_from_request_params
  		end

  		def token_string_from_header
          if headers['Authorization']==nil?
            headers['Authorization'][/^Bearer (.*)/, 1]
          else
            headers['X-Ncu-Api-Token']
          end
  		end


  		def token_string_from_request_params
  			   params[:api_token]
  		end

      def token_err code, massage
         {:error_code => code, :error_message => massage}
      end
  				
		
  end
end