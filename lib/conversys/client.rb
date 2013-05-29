require_relative 'flyer_services'

module Conversys
  class Client
    include Conversys::FlyerServices::Banner
    include Conversys::FlyerServices::Cache
    include Conversys::FlyerServices::Channel
    include Conversys::FlyerServices::CorrectionNotice
    include Conversys::FlyerServices::Image
    include Conversys::FlyerServices::PostalCode
    include Conversys::FlyerServices::Product
    include Conversys::FlyerServices::Promotion
    include Conversys::FlyerServices::Publication
    include Conversys::FlyerServices::SecureBridge
    include Conversys::FlyerServices::Store
  
    attr_accessor :faraday

    def initialize(api_key, url: 'http://content.flyerservices.com')
      @faraday = Faraday.new(:url => url) do |config|
        yield config if block_given?

        config.response :rashify
        config.response :xml, content_type: /\bxml$/
        config.adapter  Faraday.default_adapter
      end

      @faraday.headers = {
        'Authorization' => api_key
      }
    end

    def get(path, params = {})
      faraday.get "/XMLPublicationService.svc#{path}", params
    end

    def get_session_id
      get "/sessionId"
    end

    # TODO:
    # POST flash/data?uri={uri}
    # GET {organizationCode}/{bannerCode}/zoneClasses?l={languageCode}
  end
end