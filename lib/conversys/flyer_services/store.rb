module Conversys
  module FlyerServices
    module Store
      # GET {organizationCode}/{bannerCode}/stores
      def get_stores(org_code, banner_code)
        get "/#{org_code}/#{banner_code}/stores"
      end

      # GET {organizationCode}/{bannerCode}/stores/{storeId}/publications?l={languageCode}&x={pubTypeExclusionList}
      def get_store_publications(org_code, banner_code, store_id, params = {})
        get "/#{org_code}/#{banner_code}/stores/#{store_id}/publications", params
      end

      # GET {organizationCode}/{bannerCode}/stores/closest/{PCZip}/{unit}/{topN}?cc={countryCode}&amp;filter={filter}&amp;r={radius}&amp;open={open}&amp;time={time}
      def get_closest_stores_postal_code(org_code, banner_code, pc_zip, unit, top_n = 10, params = {})
        get "/#{org_code}/stores/closest/#{pc_zip}/#{unit}/#{top_n}", params
      end

      # GET {organizationCode}/stores/closest/coord/{unit}/{topN}?lat={latitude}&long={longitude}&cc={countryCode}&open={open}&time={time}&r={radius}
      def get_closest_stores_coord(org_code, unit, top_n = 10, params = {})
        get "/#{org_code}/stores/closest/coord/#{unit}/#{top_n}", params
      end

      # GET {organizationCode}/{bannerCode}/stores/georegions
      def get_store_georegions(org_code, banner_code)
        get "/#{org_code}/#{banner_code}/stores/georegions"
      end

      # GET {organizationCode}/{bannerCode}/stores/{countryCode}
      def get_stores_by_country_code(org_code, banner_code, country_code)
        get "/#{org_code}/#{banner_code}/stores/#{country_code}"
      end

      # GET {organizationCode}/{bannerCode}/stores/{countryCode}/{regionCode}
      def get_stores_by_country_and_region_code(org_code, banner_code, country_code, region_code)
        get "/#{org_code}/#{banner_code}/stores/#{country_code}/#{region_code}"
      end

      # GET {organizationCode}/{bannerCode}/stores/{countryCode}/{regionCode}/{citycounty}
      def get_stores_by_country_and_region_and_city_county(org_code, banner_code, country_code, region_code, city_county)
        get "/#{org_code}/#{banner_code}/stores/#{country_code}/#{region_code}/#{city_county}"
      end

      # GET {organizationCode}/{bannerCode}/store/{storeid}
      def get_store(org_code, banner_code, store_id)
        get "/#{org_code}/#{banner_code}/store/#{store_id}"
      end

      # GET {organizationCode}/{bannerCode}/stores/closest/{PCZip}/{unit}/{topN}?cc={countryCode}&filter={filter}&r={radius}&open={open}&time={time}
      def get_closest_stores_by_post_code(org_code, banner_code, pc_zip, unit, top_n = 10, params = {})
        get "/#{org_code}/#{banner_code}/stores/closest/#{pc_zip}/#{unit}/#{top_n}", params
      end

      # GET {organizationCode}/{bannerCode}/stores/closest/{latitude}/{longitude}/{unit}/{topN}?r={radius}&open={open}&time={time}
      def get_closest_stores_by_lat_lng(org_code, banner_code, lat, lng, unit, top_n = 10, params = {})
        get "/#{org_code}/#{banner_code}/stores/closest/#{lat}/#{lng}/#{unit}/#{top_n}", params
      end
    end
  end
end
