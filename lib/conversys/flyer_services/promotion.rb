module Conversys
  module FlyerServices
    module Promotion
      # GET {organizationCode}/{bannerCode}/promotions?pc={postalCode}&promotype={promoType}&pt={promoType2}&cc={countryCode}&pubid={publicationId}&image={idimension}&thumb={tdimension}&eventId={eventId}&excludeProductList={excludeProductList}
      def get_promotions(org_code, banner_code, params = {})
        get "/#{org_code}/#{banner_code}/promotions", params
      end

      # GET {organizationCode}/{bannerCode}/promotions/preview?pc={postalCode}&promotype={promoType}&pt={promoType2}&cc={countryCode}&image={idimension}&thumb={tdimension}
      def get_promotions_preview(org_code, banner_code, params = {})
        get "/#{org_code}/#{banner_code}/promotions/preview", params
      end
    end
  end
end
