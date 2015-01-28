require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Trakt < OmniAuth::Strategies::OAuth2
      option :name, 'trakt'

      option :client_options, {
        authorize_url: '/oauth/authorize',
        token_url: '/oauth/token',
        site: 'https://trakt.tv'
      }

      uid do
        access_token.params['uid']
      end
    end
  end
end

OmniAuth.config.add_camelization 'trakt', 'Trakt'
