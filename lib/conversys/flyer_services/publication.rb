module Conversys
  module FlyerServices
    module Publication
      # GET {organizationCode}/{bannerCode}/publications?l={languageCode}&promoDate={promoDate}&pd={promoDate2}&applicationId={applicationId}
      def get_publications(org_code, banner_code, params = {})
        get "/#{org_code}/#{banner_code}/publications", params
      end

      # GET {organizationCode}/{bannerCode}/publications/random?l={languageCode}&promoDate={promoDate}&pd={promoDate2}
      def get_random_publications(org_code, banner_code, params = {})
        get "/#{org_code}/#{banner_code}/publications/random", params
      end

      # GET {organizationCode}/{bannerCode}/publications/preview
      def get_preview_publications(org_code, banner_code)
        get "/#{org_code}/#{banner_code}/publications/preview"
      end

      # GET {organizationCode}/{bannerCode}/publications/geo?co={countryCode}&pv={provinceCode}&ct={county}&c={city}&pc={pczip}&l={languageCode}&x={pubTypeExclusionList}
      def get_publications_geo(org_code, banner_code, params = {})
        get "/#{org_code}/#{banner_code}/publications/geo", params
      end

      # GET {organizationCode}/{bannerCode}/publications/ByDate/{viewDate}?l={languageCode}&storeId={storeId}&co={countryCode}&pv={provinceCode}&ct={county}&c={city}&pc={pczip}
      def get_publications_by_date(org_code, banner_code, view_date, params = {})
        get "/#{org_code}/#{banner_code}/publications/ByDate/#{view_date}", params
      end

      # GET {organizationCode}/{bannerCode}/publicationstostore
      def get_publications_to_store(org_code, banner_code)
        get "/#{org_code}/#{banner_code}/publicationstostore"
      end

      # GET {organizationCode}/{bannerCode}/publicationstostore/preview
      def get_preview_publications_to_store(org_code, banner_code)
        get "/#{org_code}/#{banner_code}/publicationstostore/preview"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}
      def get_publication(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{pageId}/imagemapdata
      def get_publication_page_imagemapdata(org_code, banner_code, publication_id, page_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page_id}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/topNbyCategory/{topN}/{sortField}/{sortDirection}
      def get_publication_top_products_by_category(org_code, banner_code, publication_id, top_n, sort_field, sort_direction)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/topNbyCategory/#{top_n}/#{sort_field}/#{sort_direction}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/imagemapdata?pz={pageSize}&po={pageOffset}
      def get_publication_image_map_data(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/imagemapdata", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/coupons
      def get_publication_coupons(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/coupons"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/PriceArray?roundingValue={roundingValue}
      def get_publication_price_array(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/PriceArray", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/videos/all?image={idimension}&thumb={tdimension}
      def get_publication_all_videos(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/videos/all", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/videos?image={idimension}&thumb={tdimension}
      def get_publication_videos(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/videos", params
      end

      # GET {organizationCode}/{bannerCode}/publication/{publicationId}/brandtree
      def get_publication_brand_tree(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/brandtree"
      end

      # GET {organizationCode}/{bannerCode}/Publication/{publicationId}/BrandTree/{brandId}
      def get_publication_brand_tree_brand(org_code, banner_code, publication_id, brand_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/BrandTree/#{brand_id}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/categorytree
      def get_publication_category_tree(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/categorytree"
      end

      # GET {organizationCode}/{bannerCode}/Publication/{publicationId}/CategoryTree/{categoryId}
      def get_publication_category_tree_category(org_code, banner_code, publication_id, category_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/CategoryTree/#{category_id}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/brands/children/{parentBrandId}
      def get_publication_child_brands(org_code, banner_code, publication_id, parent_brand_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/brands/children/#{parent_brand_id}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/ChildCategories/{parentCategoryId}
      def get_publication_child_categories(org_code, banner_code, publication_id, parent_category_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/ChildCategories/#{parent_category_id}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/Index
      def get_publication_index(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/Index"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages
      def get_publication_pages(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{page}
      def get_publication_page(org_code, banner_code, publication_id, page)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{pageId}/products/reviews
      def get_publication_page_product_reviews(org_code, banner_code, publication_id, page_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page_id}/products/reviews"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{pageId}/recipes/reviews
      def get_publication_page_recipe_reviews(org_code, banner_code, publication_id, page_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page_id}/recipes/reviews"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{pageId}/recipes/all?image={idimension}&thumb={tdimension}
      def get_publication_page_all_recipes(org_code, banner_code, publication_id, page_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page_id}/recipes/all", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{pageId}/recipes?image={idimension}&thumb={tdimension}
      def get_publication_page_recipes(org_code, banner_code, publication_id, page_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page_id}/recipes", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{pageId}/regions
      def get_publication_page_regions(org_code, banner_code, publication_id, page_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page_id}/regions"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{pageId}/videos?image={idimension}&thumb={tdimension}
      def get_publication_page_videos(org_code, banner_code, publication_id, page_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/pages/#{page_id}/videos", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/productRegions/topN/{topN}?orderby={orderBy}&image={idimension}&thumb={tdimension}
      def get_publication_top_product_regions(org_code, banner_code, publication_id, top_n = 10, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/productRegions/topN/#{top_n}", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/brands
      def get_publication_product_brands(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/brands"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/brands/{brandId}?sf={sortField}&so={sortDirection}
      def get_publication_product_brand(org_code, banner_code, publication_id, brand_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/brands/#{brand_id}", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/categories
      def get_publication_product_categories(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/categories"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/categories/{categoryId}?sf={sortField}&so={sortDirection}
      def get_publication_product_category(org_code, banner_code, publication_id, category_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/categories/#{category_id}", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/condensed?image={idimension}&thumb={tdimension}&search={search}&s={search2}&sf={sortField}&so={sortDirection}
      def get_publication_products_condensed(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/condensed"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/pages/{page}?image={idimension}&thumb={tdimension}&sf={sortField}&so={sortDirection}
      def get_publication_product_page(org_code, banner_code, publication_id, page, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/pages/#{page}", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/pricerange/{lowestPrice}/{highestPrice}
      def get_publication_product_price_range(org_code, banner_code, publication_id, lowest_price, highest_price)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/pricerange/#{lowest_price}/#{highest_price}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationid}/products/promotions/condensed?promotype={promoType}&pt={promoType2}
      def get_publication_product_promotions_condensed(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/promotions/condensed", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/regions/{regionId}?sf={sortField}&so={sortDirection}
      def get_publication_product_region(org_code, banner_code, publication_id, region_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/regions/#{region_id}", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/republish
      def get_publication_republish_products(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/republish"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/reviews
      def get_publication_products_reviews(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/reviews"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/topN/{topN}?image={idimension}&thumb={tdimension}&sf={sortField}&so={sortDirection}
      def get_publication_top_products(org_code, banner_code, publication_id, top_n = 10, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/topN/#{top_n}", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/{productId}
      def get_publication_product(org_code, banner_code, publication_id, product_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/#{product_id}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/{productId}/recipes?image={idimension}&thumb={tdimension}
      def get_publication_product_recipes(org_code, banner_code, publication_id, product_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/#{product_id}/recipes", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/{productId}/reviews
      def get_publication_product_reviews(org_code, banner_code, publication_id, product_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/#{product_id}/reviews"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products/{productId}/videos?image={idimension}&thumb={tdimension}
      def get_publication_product_videos(org_code, banner_code, publication_id, product_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products/#{product_id}/videos", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/products?image={idimension}&thumb={tdimension}&search={search}&s={search2}&searchFields={searchFields}&rankingMultiplier={rankingMultiplierString}&sf={sortField}&so={sortDirection}
      def get_publication_products(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/products", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/productsingroups/{sortField}/{sortDirection}
      def get_publication_products_in_groups(org_code, banner_code, publication_id, sort_field, sort_direction)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/productsingroups/#{sort_field}/#{sort_direction}"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/recipes/all?image={idimension}&thumb={tdimension}
      def get_publication_all_recipes(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/recipes/all", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/recipes/reviews
      def get_publication_recipes_reviews(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/recipes_reviews"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/recipes/{recipeId}/reviews
      def get_publication_recipe_reviews(org_code, banner_code, publication_id, recipe_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/recipes/#{recipe_id}/reviews"
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/recipes/{recipeId}/videos?image={idimension}&thumb={tdimension}
      def get_publication_recipe_videos(org_code, banner_code, publication_id, recipe_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/recipes/#{recipe_id}/videos", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/recipes?image={idimension}&thumb={tdimension}
      def get_publication_recipes(org_code, banner_code, publication_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/recipes", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/regions/{regionId}/recipes/all?image={idimension}&thumb={tdimension}
      def get_publication_all_recipes_by_region(org_code, banner_code, publication_id, region_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/regions/#{region_id}/recipes/all", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/regions/{regionId}/recipes?image={idimension}&thumb={tdimension}
      def get_publication_recipes_by_region(org_code, banner_code, publication_id, region_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/regions/#{region_id}/recipes", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/regions/{regionId}/videos?image={idimension}&thumb={tdimension}
      def get_publication_videos_by_region(org_code, banner_code, publication_id, region_id, params = {})
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/regions/#{region_id}/videos", params
      end

      # GET {organizationCode}/{bannerCode}/publications/{publicationId}/TOC
      def get_publication_table_of_contents(org_code, banner_code, publication_id)
        get "/#{org_code}/#{banner_code}/publications/#{publication_id}/TOC"
      end

      # TODO:
      # GET {organizationCode}/{bannerCode}/BrandTreeByPublication/{publicationId}
      # GET {organizationCode}/{bannerCode}/CategoryTreeByPublication/{publicationId}
      # GET {organizationCode}/{bannerCode}/Products/UpcCodeSearch/{upcCode}?sf={sortField}&sd={sortDirection}
      # POST {organizationCode}/{bannerCode}/publications/{publicationId}
      # POST {organizationCode}/{bannerCode}/publications/{publicationId}/pages
      # POST {organizationCode}/{bannerCode}/publications/{publicationId}/pages/{page}
      # POST {organizationCode}/{bannerCode}/publications/{publicationId}/products
      # POST {organizationCode}/{bannerCode}/publications/{publicationId}/products/pages/{page}/{sortField}/{sortDirection}
    end
  end
end
