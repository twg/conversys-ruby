module Conversys
  module FlyerServices
    module Channel
        # GET {channel}/banners/count
      def get_banners_count(channel)
        get "/#{channel}/banners/count"
      end

      # GET {channel}/brands/count
      def get_brands_count(channel)
        get "/#{channel}/brands/count"
      end

      # GET {channel}/brands
      def get_brands(channel)
        get "/#{channel}/brands"
      end

      # GET {channel}/mastercategories
      def get_master_categories(channel)
        get "/#{channel}/mastercategories"
      end

      # GET {channel}/mastercategories/count
      def get_master_categories_count(channel)
        get "/#{channel}/mastercategories/count"
      end

      # GET {channel}/products/mastercategories
      def get_products_master_categories(channel)
        get "/#{channel}/products/mastercategories"
      end

      # GET {channel}/products/closest/count?pc={pczip}&l={language}&r={radius}&ban={banner}&br={brand}&cat={mastercategory}&co={countryCode}&cc={countryCode2}&pv={provinceCode}
      def get_closest_products_count(channel, params = {})
        get "/#{channel}/products/closest/count", params
      end

      # GET {channel}/lite/publications/closest?pc={pczip}&l={language}&r={radius}&ban={banner}&br={brand}&cat={category}&sf={sortField}&so={sortOrder}&pg={page}&pz={pageSize}&co={countryCode}&cc={countryCode2}&pv={provinceCode}&minkm={minkm}
      def get_closest_publications_lite(channel, params = {})
        get "/#{channel}/lite/publications/closest", params
      end

      # GET {channel}/publications/closest/count?pc={pczip}&l={language}&r={radius}&ban={banner}&br={brand}&cat={mastercategory}&cc={countryCode}
      def get_closest_publications_count(channel, params = {})
        get "/#{channel}/publications/closest/count", params
      end

      # GET {channel}/publications/closest?pc={pczip}&l={language}&r={radius}&ban={banner}&br={brand}&cat={category}&sf={sortField}&so={sortOrder}&pg={page}
      def get_closest_publications(channel, params = {})
        get "/#{channel}/publications/closest", params
      end

      # GET {channel}/publications/closest/search?pc={pczip}&l={language}&r={radius}&s={search}&sf={sortField}&so={sortOrder}
      def get_closest_publications_search(channel, params = {})
        get "/#{channel}/publications/closest/search", params
      end

      # GET {channel}/lite/publications/closest/search?pc={pczip}&l={language}&r={radius}&s={search}&sf={sortField}&so={sortOrder}&cc={countryCode}
      def get_closest_publications_search_lite(channel, params = {})
        get "/#{channel}/lite/publications/closest/search", params
      end

      # GET {channel}/publications/banner/{bannerCode}/closest?pc={pczip}&l={language}&r={radius}&u={unit}
      def get_closest_publications_by_banner(channel, banner_code, params = {})
        get "/#{channel}/publications/banner/#{banner_code}/closest", params
      end

      # GET {channel}/products/banner/{bannerCode}/search?s={search}&pc={pczip}&r={radius}&u={unit}&p={pageNumber}&rpp={resultsPerPage}&sf={sortField}&l={language}
      def get_products_search_by_banner(channel, banner_code, params = {})
        get "/#{channel}/products/banner/#{banner_code}/search", params
      end

      # GET {channel}/banners?l={languageCode}&mr={maximumResults}
      def get_banners(channel, params = {})
        get "/#{channel}/banners", params
      end

      # GET {channel}/banners/random?l={languageCode}&mr={maximumResults}
      def get_random_banners(channel, params = {})
        get "/#{channel}/banners/random", params
      end

      # GET {channel}/products/closest?pc={pczip}&l={language}&r={radius}&ban={banner}&br={brand}&cat={mastercategory}&sf={sortField}&so={sortOrder}&pg={page}&pz={pageSize}&co={countryCode}&cc={countryCode2}&pv={provinceCode}&hps={hps}
      def get_closest_products(channel, params = {})
        get "/#{channel}/products/closest", params
      end

      # GET {channel}/products/search?s={search}&pc={pczip}&r={radius}&l={language}&pg={page}&pz={pageSize}&cc={countryCode}&mr={maxResults}&hps={hps}
      def get_products_search(channel, params = {})
        get "/#{channel}/products/search", params
      end

      # GET {channel}/products/random?pc={pczip}&r={radius}&l={language}&n={number}&co={countryCode}&cc={countryCode2}&pv={provinceCode}&rf={requiredFields}&pd={promoDate}&cat={category}&hps={hps}
      def get_random_products(channel, params = {})
        get "/#{channel}/products/random", params
      end

      # TODO:
      # POST {channel}/products/productSearch
      # GET {channelCode}/{organizationCode}/{bannerCode}/publications/{publicationId}/products/categories
      # GET {channelCode}/lite/product/{productId}
      # GET {channelCode}/products/{postalCode}/{radius}?uid={uid}&email={email}&cc={countryCode}&l={language}&ts={thumbSize}&ls={largeSize}&s={search}&r={randomNumber}
    end
  end
end
