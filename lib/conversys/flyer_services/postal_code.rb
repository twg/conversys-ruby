module Conversys
  module FlyerServices
    module PostalCode
      # GET postalcodes
      def get_postal_codes
        get "/postalcodes"
      end

      # GET postalCode/closest/{latitude}/{longitude}
      def get_closest_postal_code(lat, lng)
        get "/postalCode/closest/#{lat}/#{lng}"
      end

      # GET pczip/{pczip}?cc={countryCode}
      def get_pc_zip(pc_zip, params = {})
        get "/pczip/#{pc_zip}", params
      end
    end
  end
end
