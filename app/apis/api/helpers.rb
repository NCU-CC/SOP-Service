module API
		module Helpers
			extend Grape::API::Helpers
			
      def token_check
          this_token = token_string
          url_oauth=getURL request.request_method
          getRES url_oauth,this_token
      end

      def getURL request_method
        if request_method=='GET'
          Settings::OAUTH_TOKEN_URL
        else
          Settings::OAUTH_ACCESS_TOKEN_URL
        end
      end

      def getRES url_oauth,token
        response=RestClient::Request.execute method: :get, url: url_oauth + token+'?ip=127.0.0.1&referer=http://www.gamer.com.tw', headers: {x_ncu_api_token: Settings::NCU_API_TOKEN}
        res=JSON.parse response.body
      end

  		def token_string
  			   token_string_from_header || token_string_from_request_params
  		end

  		def token_string_from_header
          if headers['X-Ncu-Api-Token']==nil
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