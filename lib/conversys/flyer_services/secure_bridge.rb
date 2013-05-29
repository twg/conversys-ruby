module Conversys
  module FlyerServices
    module SecureBridge
      # GET securebridge?user={userName}&uri={uri}&auth={token}
      def get_secure_bridge(params = {})
        get "/securebridge", params
      end

      # GET {organizationCode}/{bannerCode}/securebridge?user={userName}&uri={uri}&auth={token}
      def get_secure_bridge_by_org_and_banner(org_code, banner_code, params = {})
        get "/#{org_code}/#{banner_code}/securebridge", params
      end
    end
  end
end
