module Conversys
  module FlyerServices
    module Image
      # GET {organizationCode}/{bannerCode}/Images/{Id}/{dimension}
      def get_images(org_code, banner_code, image_id, dimension)
        get "/#{org_code}/#{banner_code}/Images/#{image_id}/#{dimension}"
      end
    end
  end
end
