module Conversys
  module FlyerServices
    module Banner
      # GET banners/all
      def get_all_banners
        get "/banners/all"
      end

      # GET {organizationCode}/banners/org
      def get_org_banners(org_code)
        get "/#{org_code}/banners/org"
      end

      # GET {organizationCode}/{bannerCode}/banner
      def get_banner(org_code, banner_code)
        get "/#{org_code}/#{banner_code}/banner"
      end
    end
  end
end
