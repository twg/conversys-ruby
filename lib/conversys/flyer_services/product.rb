module Conversys
  module FlyerServices
    module Product
      # GET banner/{bannerCode}/products/random?pc={pczip}&r={radius}&l={language}&n={number}&co={countryCode}&cc={countryCode2}&pv={provinceCode}&rf={requiredFields}&pd={promoDate}&cat={categories}
      def get_random_banner_product(banner_code, params = {})
        get "/banner/#{banner_code}/products/random", params
      end

      # GET products/brands/search?s={search}&pc={pczip}&r={radius}&u={unit}
      def get_products_brands_search(params = {})
        get "/products/brands/search", params
      end

      # GET products/prefix?s={prefix}&pc={pczip}&r={radius}&u={unit}
      def get_products_prefix(params = {})
        get "/products/prefix", params
      end

      # GET products/keywords?s={keywords}&pc={pczip}&r={radius}&u={unit}
      def get_product_keywords(params = {})
        get "/products/keywords", params
      end

      # GET {organizationCode}/{bannerCode}/productbonuses/{publicationId}?pg={pageid}
      def get_product_bonuses(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/productbonuses/#{publication_id}", params
      end
    end
  end
end
