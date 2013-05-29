module Conversys
  module FlyerServices
    module Cache
      # GET CacheOK?server={server}
      def get_cache_ok(params = {})
        get "/CacheOK", params
      end

      # GET SetCacheStatus?status={status}&maintenance={maintenance}&server={server}&p={pword}
      def set_cache_status(params = {})
        get "/SetCacheStatus"
      end
    end
  end
end
