# encoding: utf-8

require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Haobtc < OmniAuth::Strategies::OAuth2
      option :name, "haobtc"

      option :client_options, {
        :site => 'https://haobtc.com',
        :authorize_url => '/auth/oauth/authorize/',
        :token_url => "/auth/oauth/get_token/"
      }

      uid do
        @uid ||= begin
          access_token.options[:mode] = :query
          access_token.options[:param_name] = :access_token
        end
      end

      info do
        user_info = raw_info['user_info']
        {
          :username => user_info['username'],
          :fullname => user_info['fullname'],
          :address => user_info['address'],
        }
      end

      # extra do
      #   {
      #     :raw_info => raw_info
      #   }
      # end

      def raw_info
        @raw_info ||= access_token.get('https://haobtc.com/api/v1/user/profile').parsed
      end

    end
  end
end

OmniAuth.config.add_camelization('haobtc', 'Haobtc')
